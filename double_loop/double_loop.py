import sys

max = int(sys.argv[1])

sum = 0
for i in range(0, max + 1):
    for j in range(0, max + 1):
        sum += j
        sum = sum & 0xfff

print(sum)
