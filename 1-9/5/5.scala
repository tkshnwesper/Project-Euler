object SmallestMultiple {
  def gcd(a: Long, b: Long): Long = {
    val rem = a % b
    if (rem == 0) b else gcd(b, rem)
  }
  def lcm(a: Long, b: Long) = a * b / gcd(a, b)
  def main(args: Array[String]): Unit = println((1L to 20L).foldRight(1L)(lcm))
}
