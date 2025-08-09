+++
title = "Secure defaults for LDAP password (CRYPT/PBKDF2/SHA2/ARGON2) storage"
date = 2025-02-24T15:33:00+00:01
updated = 2025-08-10T00:10:00+00:01

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Secure defaults for LDAP password (CRYPT/PBKDF2/SHA2/ARGON2) storage"
keywords = ["LDAP", "password", "CRYPT", "PBKDF2", "SHA2", "ARGON2"]
category = "Tutorial"
images = []

[taxonomies]
tags = ["infra-tutorial", "LDAP"]
+++

Secure defaults for LDAP password (CRYPT/PBKDF2/SHA2/ARGON2) storage

<!-- more -->

While configuring LDAP you might be asking yourself "what are the different password storage methods/hashes ?".

I did some browsing on the web and found it complictated to figure out what are the password hashing methods to keep your LDAP data secure.
That means, you have passwords to access the LDAP database but the database also stores passwords for your users.

You can learn more about password on [OWASP's Password Storage Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html).

## The basics

The manual of [slapd.conf](https://manpages.debian.org/bookworm/slapd/slapd.conf.5.en.html#password) says:
- The <hash> must be one of `{SSHA}`, `{SHA}`, `{SMD5}`, `{MD5}`, `{CRYPT}`, and `{CLEARTEXT}`.
- The default is `{SSHA}`.

You can also have [`{ARGON2}`](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html#argon2id) in Debian slapd versions after `2.5.4+dfsg-1` thanks to this [commit](https://salsa.debian.org/openldap-team/openldap/-/commit/fe779ffb7b8a677853f7fc12af58912d8e767963) to change the packaging. But you still need to add a line to the `slapd.conf` file: `moduleload argon2`.

Let's check each one, starting with the most risky ones:
- `{CLEARTEXT}` Obviously the password can be seen by everyone
- `{MD5}` We all know this, md5 can be reverted by bruteforce attempts and dictionnary attacks, for example on [md5decrypt.net](https://md5decrypt.net/en/). You can read more about it on [StackOverflow](https://stackoverflow.com/q/1240852/5155484).
  - Do not use `md5`.
- `{SMD5}` The same but with a [salt](https://wikipedia.org/wiki/Salt_(cryptography)), this will make attacks much more complicated and hard to do.
- `{SHA}` `sha1` is a bit better than `md5` but [Google](https://security.googleblog.com/2017/02/announcing-first-sha1-collision.html) did find some ways to exploit it when it is used for fingerprints. And for passwords, everyone already agrees that you should not use `sha1`. Read more about it on [StackOverflow](https://stackoverflow.com/a/42421467/5155484).
  - [NIST (National Institute of Standards and Technology) deprecated the use of SHA-1 in 2011](https://csrc.nist.gov/projects/hash-functions).
  - [CNIL](https://www.cnil.fr/fr/securite-chiffrement-hachage-signature) says not to use it.
- `{SSHA}` The same but with a [salt](https://wikipedia.org/wiki/Salt_(cryptography)), this will make attacks much more complicated and hard to do.
- `{CRYPT}` Is not quite good for passwords.
  - The [Apache2](https://httpd.apache.org/docs/2.4/programs/htpasswd.html#security) webserver explains the "Security Considerations"
  - And links to more about it [Unix crypt using SHA-256 and SHA-512](https://www.akkadia.org/drepper/SHA-crypt.txt).
  - The [Debian manual](https://manpages.debian.org/bookworm/libcrypt-dev/crypt.5.en.html#sha512crypt) for crypt explains the format

## The format

> Since glibc 2.7, the SHA-256 and SHA-512 implementations support a
> user-supplied number of hashing rounds, defaulting to 5000.  If
> the "$id$" characters in the salt are followed by "rounds=xxx$",
> where xxx is an integer, then the result has the form
>
> `$id$rounds=yyy$salt$hashed`

Using [slappasswd](https://manpages.debian.org/bookworm/slapd/slappasswd.8.en.html) and the command: `slappasswd -h '{CRYPT}' -c '$6$rounds=300000$%.16s'` it generates a password in the format:

$6$[cost]$[22 character salt][31 character hash]

For example, with input password abc123xyz, cost 12, and a random salt, the output of bcrypt is the string:

- SHA-256 `$5$`
- SHA-512 `$6$`

```
 {CRYPT}$6$rounds=300000$OJaNHOxGKWWtaK$xxxxxxxxxxxxxxxxxx.
 \_____/\/\___________/ \_____________/ \________________/
 Hash   Alg Cost Options     Salt        Hashed password
```

```text
password-hash {SSHA} {CRYPT} {ARGON2}`
password-crypt-salt-format "$6$rounds=300000$%.16s"
```

## More schemes for slappasswd

### Debian bookworm

As I found out on the webpage: [slapd-contrib manuals](https://manpages.debian.org/bookworm/slapd-contrib/index.html)

There is 2 schemes added by the contrib package (`slapd-contrib`):

- [pbkdf2](https://manpages.debian.org/bookworm/slapd-contrib/slapd-pw-pbkdf2.5.en.html)
 - `{PBKDF2}` - alias to {PBKDF2-SHA1}
 - `{PBKDF2-SHA1}` - PBKDF2 using HMAC-SHA-1 as the underlying pseudorandom function
 - `{PBKDF2-SHA256}` - PBKDF2 using HMAC-SHA-256 as the underlying pseudorandom function
 - `{PBKDF2-SHA512}` - PBKDF2 using HMAC-SHA-512 as the underlying pseudorandom function

- [sha2](https://manpages.debian.org/bookworm/slapd-contrib/slapd-pw-sha2.5.en.html)
  - `{SSHA256}` - SHA-256 with salt, giving hash values of 256 bits length
  - `{SHA256}` - plain SHA-256 giving hash values of 256 bits length
  - `{SSHA384}` - SHA-384 with salt, giving hash values of 384 bits length
  - `{SHA384}` - plain SHA-384 giving hash values of 384 bits length
  - `{SSHA512}` - SHA-512 with salt, giving hash values of 512 bits length
  - `{SHA512}` - plain SHA-512 giving hash values of 512 bits length

- [smbk5pwd](https://manpages.debian.org/bookworm/slapd-contrib/slapo-smbk5pwd.5.en.html) (Samba & Kerberos password sync overlay to slapd)
Have fun. I have no way to test it.
  - `{K5KEY}` - to be used in the `userPassword` attribute.

- (Undocumented)
  - `{NS-MTA-MD5}` - Netscape MTA MD5 hashed passwords (the only one `slappasswd` does not apparently support)
  - `{APR1}` - [APR1](https://fr.wikipedia.org/wiki/APR1), suported by [Apache2 htaccess](https://httpd.apache.org/docs/2.4/en/misc/password_encryptions.html)
  - `{BSDMD5}` - Seems to be MD5 crypt, see this [openldap mailing list post](https://www.openldap.net/lists/openldap-bugs/201407/msg00030.html).

### Debian trixie

Released on 08/2025.

[slapd-contrib manuals](https://manpages.debian.org/testing/slapd-contrib/index.html)

There is 1 more scheme than in `bookworm`:

- [argon2](https://manpages.debian.org/testing/slapd-contrib/slapd-pw-argon2.5.en.html)
  - `{ARGON2}` - Argon 2, like `{CRYPT}` you can use parameters in the salt/format: `{ARGON2}$argon2i$v=19$m=4096,t=3,p=1$...`

But `argon2` got moved from [slapd-contrib to slapd](https://salsa.debian.org/openldap-team/openldap/-/commit/fe779ffb7b8a677853f7fc12af58912d8e767963) in the Debian version `2.5.4+dfsg-1~exp1`.
So all versions above will find the module in `/usr/lib/ldap/argon2.so`

And that means that slappasswd wants it this way: `slappasswd -o module-load=argon2 -h '{ARGON2}'`.
And here is the result: `{ARGON2}$argon2id$v=19$m=7168,t=5,p=1$oFzolryiDLgxHI07Ut495A$MnuYn7SV7mrtqfq3W/izjmdZpc6S6UOoQNZhBrgbOkM`

To change the default parameters you need to use it like this:
`slappasswd -o module-load="argon2 m=7168" -h '{ARGON2}'`.

It supports `m=<memory>`, `p=<parallelism>` and `t=<iterations>` parameters.

The existing list of schemes supported from `bookworm` remain unchanged.

But one more interesting module is added: [ppm (Password Policy Module) - extension of the password policy overlay](https://manpages.debian.org/testing/slapd-contrib/slapm-ppm.5.en.html).

### Example

If you have the error: `Password generation failed for scheme {PBKDF2}: scheme not recognized`
You maybe need to install `apt install slapd-contrib` or/and add `-o module-load=pw-pbkdf2` to the command line.

Run `slappasswd -o module-load=pw-pbkdf2 -h '{PBKDF2}'`
And here is the result: `{PBKDF2}10000$yRnewNnSbe9LyLCmc7wTdw$YZ.z5OpUKcs8t1lYe3rkPnVS8K4`

## Note

I am not sure why I was holding publishing this article, normally it is up to date.
Please contact me if not.

## References

- https://www.redpill-linpro.com/techblog/2016/08/16/ldap-password-hash.html
- https://kb.brightcomputing.com/knowledge-base/how-can-i-change-the-password-policy-of-ldap/
- https://strugglers.net/~andy/mothballed-blog/2010/01/23/openldap-and-md5crypt/
- https://serverfault.com/a/571989/336084
- https://github.com/P-H-C/phc-string-format/blob/master/phc-sf-spec.md
- https://manpages.debian.org/bookworm/libcrypt-dev/crypt.5.en.html
- https://manpages.debian.org/bookworm/slapd/slapd.conf.5.en.html#password
- https://www.wolfssl.com/fips-140-3-and-sha-1-retirement/
- https://www.arsouyes.org/articles/2019/52_Hash_Function_Cryptography/
- https://passlib.readthedocs.io/en/stable/narr/quickstart.html#recommended-hashes
