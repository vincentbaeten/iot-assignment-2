fn get_greeting() -> String {
    String::from("Hello, World!")
}

fn main() {
    println!("{}", get_greeting());
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn greeting() {
        assert_eq!("Hello, World!", get_greeting());
    }
}
