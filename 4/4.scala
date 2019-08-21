object Palindrome {
  def main(args: Array[String]): Unit = {
    val palindromes = for {
      i <- 999 to 100 by -1
      j <- i to 100 by -1
      numAsString = (i * j).toString
      if numAsString == numAsString.reverse
    } yield numAsString.toInt
    println(palindromes.max)
  }
}
