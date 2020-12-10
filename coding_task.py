# TASK
# 1. Write a program in any programming language '
# that counts backwards from value provided by user to 1 and prints: “Agile”
# if the number is divisible by 5, “Software” if the
# number is divisible by 3, “Testing” if the number is divisible by both,
# or prints just the number if none of those cases are true.\


def program(num: int):
    for n in range(num, 1, -1):
        c1 = n % 5 == 0
        c2 = n % 3 == 0
        if c1 and c2:
            print('Testing')
        elif c1:
            print('Agile')
        elif c2:
            print('Software')
        else:
            print(n)

program(15)