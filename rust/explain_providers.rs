use std::io;
use std::thread;
use std::time::{Duration, SystemTime};

fn main() {
    let mut choice_history: Vec<String> = Vec::new();
    let mut request_count = 0;
    let mut last_request_time = SystemTime::now();

    loop {
        let elapsed_time = last_request_time.elapsed().unwrap_or_default();

        // Check if the hour has passed since the last request
        if elapsed_time >= Duration::from_secs(3600) {
            request_count = 0;
            last_request_time = SystemTime::now();
        }

        if request_count >= 30 {
            let remaining_time = Duration::from_secs(3600) - elapsed_time;
            println!("Usage limit reached. Please wait {} minutes and {} seconds.", remaining_time.as_secs() / 60, remaining_time.as_secs() % 60);
            thread::sleep(Duration::from_secs(5)); // Block attempts for 5 seconds
            continue;
        }

        println!("List of available hosting providers and domain registrars:");
        println!("a) Namecheap");
        println!("b) Cloudflare");
        println!("c) NameSilo");
        println!("d) Tucows");
        println!("e) Amazon AWS");
        println!("f) Hostinger");
        println!("g) DDoS-Guard");
        println!("h) RU-Center");
        println!("i) REG.RU");
        println!("j) TimeWeb");
        println!("k) Porkbun");
        println!("l) MarkMonitor");
        println!("m) GoDaddy"); // Added GoDaddy
        println!("Enter the letter of a provider, type '/history' to view your choices, type '/clear' to clear history, or type 'exit' to end:");

        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");

        let choice = input.trim().to_lowercase();

        if choice == "exit" {
            println!("Goodbye!");
            break;
        } else if choice == "/history" {
            print_history(&choice_history);
        } else if choice == "/clear" {
            choice_history.clear();
            println!("History cleared.");
        } else {
            // Add the choice to history
            choice_history.push(choice.clone());
            request_count += 1;

            match choice.as_str() {
                "a" | "namecheap" => print_explanation("Namecheap", "Namecheap is a popular domain registrar and web hosting provider known for its affordability and user-friendly services."),
                "b" | "cloudflare" => print_explanation("Cloudflare", "Cloudflare is a global content delivery network (CDN) and web security provider, offering additional services like domain registration."),
                "c" | "namesilo" => print_explanation("NameSilo", "NameSilo is a domain registrar known for its straightforward pricing and domain management features."),
                "d" | "tucows" => print_explanation("Tucows", "Tucows is a domain registrar and internet services company providing domain registration and other online services."),
                "e" | "amazon aws" | "aws" => print_explanation("Amazon AWS", "Amazon AWS (Amazon Web Services) is a comprehensive cloud computing platform offering various services, including hosting and domain registration."),
                "f" | "hostinger" => print_explanation("Hostinger", "Hostinger is a web hosting provider offering affordable hosting solutions with a focus on simplicity and performance."),
                "g" | "ddos" | "ddos-guard" => print_explanation("DDoS-Guard", "DDoS-Guard is a cybersecurity company specializing in DDoS protection and secure hosting."),
                "h" | "rucenter" => print_explanation("RU-Center", "RU-Center is one of the largest domain registrars and hosting providers in Russia, offering a range of internet services."),
                "i" | "reg" | "reg.ru" => print_explanation("REG.RU", "REG.RU is a Russian domain registrar and hosting provider offering a variety of online services."),
                "j" | "timeweb" => print_explanation("TimeWeb", "TimeWeb is a hosting provider known for its reliable hosting solutions and a wide range of services."),
                "k" | "porkbun" => print_explanation("Porkbun", "Porkbun is a domain registrar known for its straightforward pricing, free WHOIS privacy, and easy domain management."),
                "l" | "markmonitor" => print_explanation("MarkMonitor", "MarkMonitor is a brand protection company providing domain management and anti-counterfeiting solutions."),
                "m" | "godaddy" => print_explanation("GoDaddy", "GoDaddy is a popular domain registrar and web hosting provider known for its domain registration services and additional online tools."),
                _ => println!("Invalid input. Please enter a valid letter, '/history', '/clear', or 'exit'."),
            }
        }
    }
}

fn print_explanation(provider: &str, explanation: &str) {
    println!("Information for {}: {}", provider, explanation);
}

fn print_history(choice_history: &Vec<String>) {
    if choice_history.is_empty() {
        println!("No history available.");
    } else {
        println!("Choice History:");
        for (index, item) in choice_history.iter().enumerate() {
            println!("{}. {}", index + 1, item);
        }
    }
}
