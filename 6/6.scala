object SumOfSquares {
  def result =
    2 * (
      for {
        i <- 1 to 100
        j <- 1 until i
      } yield i * j
    ).sum
  def main(args: Array[String]) = println(result)
}
