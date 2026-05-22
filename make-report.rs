use markdown2pdf::{config::ConfigSource, parse_into_file};
use std::{env, fs, process::exit};
use time::{Month, OffsetDateTime};

fn previous_month() -> (i32, u8) {
    let now = OffsetDateTime::now_utc();
    if now.month() == Month::January {
        (now.year() - 1, 12)
    } else {
        (now.year(), now.month() as u8 - 1)
    }
}

fn main() {
    let args: Vec<String> = env::args().collect();

    let (year, month) = match args.len() {
        1 => {
            let (y, m) = previous_month();
            (y.to_string(), format!("{m:02}"))
        }
        3 => (args[1].clone(), args[2].clone()),
        _ => {
            eprintln!("Wrong arguments !");
            eprintln!("Use: make-report           (defaults to the previous month)");
            eprintln!("Use: make-report 2026 03   (explicit year and month)");
            exit(1);
        }
    };

    let input_file = format!("phpMyAdmin/{year}/{month}/detailed-report.md");
    let output_file = format!("phpMyAdmin/{year}/{month}/REPORT_{year}_{month}.pdf");

    println!("Input: {input_file}");
    println!("Output: {output_file}");

    let markdown: String = fs::read_to_string(input_file).expect("The input file should read");

    match parse_into_file(
        markdown,
        output_file.as_str(),
        ConfigSource::File("./markdown2pdfrc.toml"),
        None
    ) {
        Ok(_) => {
            println!("Report generated !");
            showfile::show_path_in_file_manager(output_file);
        }
        Err(e) => {
            eprintln!("Parsing error !");
            eprintln!("{}", e);
            exit(1);
        }
    };
}
