use markdown2pdf::{config::ConfigSource, parse_into_file};
use std::{env, fs, process::exit};

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() != 3 {
        eprintln!("Missing arguments !");
        eprintln!(
            "Use: make-report 2025 10"
        );
        exit(1);
    }

    let year = &args[1];
    let month = &args[2];
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
