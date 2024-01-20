use std::io;

fn main() {
    loop {
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
        println!("Enter the letter of a provider, or type 'exit' to end:");

        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");

        let choice = input.trim().to_lowercase();

        if choice == "exit" {
            println!("Goodbye!");
            break;
        }

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
            _ => println!("Invalid input. Please enter a valid letter or 'exit'."),
        }
    }
}

fn print_explanation(provider: &str, explanation: &str) {
    println!("Information for {}: {}", provider, explanation);
}
