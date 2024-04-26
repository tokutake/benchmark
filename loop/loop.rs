use std::env;

fn main() {
    let upper : i64 = env::args().nth(1).expect("argument does not exist").parse().unwrap();
    let mut sum : i64 = 0;

    for i in 1..=upper {
        sum += i;
    }
    println!("{}", sum);
}
