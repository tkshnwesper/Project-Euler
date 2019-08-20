sum = 0


def fib(a=0, b=1):
    global sum
    a, b = b, a + b
    if a % 2 == 0:
        sum += a
    if b >= 40_00_000:
        return
    fib(a, b)


fib()

print(sum)

