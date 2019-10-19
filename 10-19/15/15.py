start = (0, 0)

end = (20, 20)

def factorial(n):
  result = 1
  for i in range(1, n + 1):
    result *= i
  return result

if __name__ == "__main__":
   print(factorial(2 * end[0]) / (factorial(end[0]) ** 2))
  