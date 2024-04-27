use std::env;

fn main() {
    let upper : i64 = env::args().nth(1).expect("argument does not exist").parse().unwrap();
    let mut sum : i64 = 0;

    let mut i : i64 = 0;
    while i <= upper {
        sum += i;
        i += 1;
    }
    println!("{}", sum);
}
