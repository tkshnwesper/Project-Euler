num = str(1 << 1000)

def sum(n):
    total = 0
    for i in range(len(n)):
        total = total + int(n[i])
    return total

print(sum(num))

