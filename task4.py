# 1. While Loop: Print numbers from 1 to 20
i = 1
while i <= 20:
    print(f"Number: {i}")
    i += 1
print("\n")


# 2. While Loop: Print even numbers from 1 to 50
i = 1
while i <= 50:
    if i % 2 == 0:
        print(f"Even Number: {i}")
    i += 1
print("\n")


# 3. While Loop: Print multiplication table of a given number
number = 5
i = 1
print(f"--- Multiplication Table of {number} (While Loop) ---")
while i <= 10:
    print(f"{number} x {i} = {number * i}")
    i += 1
print("\n")


# 4. While Loop: Find the sum of the first 10 natural numbers
sum_natural = 0
i = 1
while i <= 10:
    sum_natural += i
    i += 1
print(f"Sum of first 10 natural numbers: {sum_natural}\n")


# 5. While Loop: Reverse a given number
original_num = 12345
num = original_num
reversed_num = 0
while num > 0:
    remainder = num % 10
    reversed_num = (reversed_num * 10) + remainder
    num = num // 10
print(f"Original Number: {original_num} -> Reversed Number: {reversed_num}\n")


# 6. For Loop: Print numbers from 1 to 20
for i in range(1, 21):
    print(f"Value: {i}")
print("\n")


# 7. For Loop: Print odd numbers from 1 to 50
for i in range(1, 51):
    if i % 2 != 0:
        print(f"Odd Number: {i}")
print("\n")


# 8. For Loop: Print each character of a string
sample_string = "Stackly"
for char in sample_string:
    print(f"Character: {char}")
print("\n")


# 9. For Loop: Print multiplication table of a given number
table_num = 7
print(f"--- Multiplication Table of {table_num} (For Loop) ---")
for i in range(1, 11):
    print(f"{table_num} x {i} = {table_num * i}")
print("\n")


# 10. For Loop: Find the factorial of a number
fact_num = 5
factorial = 1
for i in range(1, fact_num + 1):
    factorial *= i
print(f"Factorial of {fact_num}: {factorial}\n")


# 11. Range Function: range(length)
print("--- Demonstrating range(length) ---")
for i in range(5):
    print(f"Index: {i}")
print("\n")


# 12. Range Function: range(start, end)
print("--- Demonstrating range(start, end) ---")
for i in range(10, 15):
    print(f"Value: {i}")
print("\n")


# 13. Range Function: range(start, end, step)
print("--- Demonstrating range(start, end, step) ---")
for i in range(2, 20, 3):
    print(f"Value: {i}")
print("\n")


# 14. Loop Control: break when number 7 is encountered
print("--- Loop Control: break at 7 ---")
for i in range(1, 15):
    if i == 7:
        break
    print(f"Number: {i}")
print("\n")


# 15. Loop Control: continue to skip all even numbers between 1 and 20
print("--- Loop Control: continue to skip evens ---")
for i in range(1, 21):
    if i % 2 == 0:
        continue
    print(f"Odd Value: {i}")
print("\n")


# 16. Loop Control: skip vowels in string using continue
input_str = "CloudEngineers"
vowels = "aeiouAEIOU"
print(f"Filtering vowels from: {input_str}")
for char in input_str:
    if char in vowels:
        continue
    print(f"Consonant Character: {char}")
print("\n")