init:
	docker run --name blog.williamdes.eu --rm -it --user $(id -u):$(id -g) -v ${PWD}:/app --workdir /app -p 80:80 balthek/zola init blog.williamdes.eu

build:
	docker run --name blog.williamdes.eu --rm --user $(id -u):$(id -g) -v ${PWD}:/app --workdir /app/blog.williamdes.eu balthek/zola build

serve:
	docker run --name blog.williamdes.eu --rm --user $(id -u):$(id -g) -v ${PWD}:/app --workdir /app/blog.williamdes.eu -p 8111:80 balthek/zola serve --interface 0.0.0.0 --port 80
