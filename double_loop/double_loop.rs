use std::env;

fn main() {
    let max : i32 = env::args().nth(1).expect("error").parse().unwrap();

    let mut i : i32 = 0;
    let mut num : i32 = 0;
    while i <= max {
        let mut j : i32 = 0;
        while j <= max {
            num += i;
            num = num & 0xfff;
            j += 1;
        }
        i += 1;
    }

    println!("{}", num);
}