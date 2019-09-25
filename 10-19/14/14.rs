fn collatz(num: u128, count: u32) -> u32 {
  match num {
    1 => count,
    _ => collatz(if num % 2 == 0 { num / 2 } else { 3 * num + 1 }, count + 1)
  }
}

fn main() {
  const upper_bound: u128 = 10_00_000;
  let mut longest_chain: (u128, u32) = (0, 0);
  for i in (1 as u128)..upper_bound {
    let collatz_result = collatz(i, 0);
    if collatz_result > longest_chain.1 {
      longest_chain = (i, collatz_result)
    }
  }
  println!("{} has {} chains", longest_chain.0, longest_chain.1)
}