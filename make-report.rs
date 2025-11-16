use markdown2pdf::{config::ConfigSource, parse_into_file};
use std::{env, fs, process::exit};

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() != 3 {
        eprintln!("Missing arguments !");
        eprintln!(
            "Use: make-report phpMyAdmin/2025/10/detailed-report.md phpMyAdmin/2025/10/REPORT_2025_10.pdf"
        );
        exit(1);
    }

    let input_file = &args[1];
    let output_file = &args[2];

    println!("Input: {}", input_file);
    println!("Output: {}", output_file);

    let markdown: String = fs::read_to_string(input_file).expect("The input file should read");

    match parse_into_file(
        markdown,
        output_file,
        ConfigSource::File("./markdown2pdfrc.toml"),
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
