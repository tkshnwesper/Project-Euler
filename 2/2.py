def fib(a=0, b=1):
    a, b = b, a + b
    if a % 2 == 0:
        return fib(a, b) + a
    if b >= 40_00_000:
        return 0
    return fib(a, b)


print(fib())

