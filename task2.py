# 1. Arithmetic Operators
# Initializing variables for mathematical operations
a = 25
b = 7

print("--- Arithmetic Operator Outputs ---")
# Performing addition using the + operator
print("Addition (a + b):", a + b)                  

# Performing subtraction using the - operator
print("Subtraction (a - b):", a - b)               

# Performing multiplication using the * operator
print("Multiplication (a * b):", a * b)            

# Performing standard float division using the / operator
print("Division (a / b):", a / b)                  

# Performing floor division to get whole number result using // operator
print("Floor Division (a // b):", a // b)          

# Performing modulus to find the remainder using % operator
print("Modulus (a % b):", a % b)                    

# Performing exponentiation to raise a to the power of b using ** operator
print("Exponentiation (a ** b):", a ** b)          
print("\n")


# 2. Comparison Operators
print("--- Comparison Operator Outputs ---")
# Checking if a is exactly equal to b using ==
print("Is equal to (a == b):", a == b)

# Checking if a is not equal to b using !=
print("Is not equal to (a != b):", a != b)

# Checking if a is strictly less than b using <
print("Is less than (a < b):", a < b)

# Checking if a is strictly greater than b using >
print("Is greater than (a > b):", a > b)

# Checking if a is less than or equal to b using <=
print("Is less than or equal to (a <= b):", a <= b)

# Checking if a is greater than or equal to b using >=
print("Is greater than or equal to (a >= b):", a >= b)
print("\n")


# 3. Logical Operators
# Declaring boolean states for conditional evaluations
x = True
y = False

print("--- Logical Operator Outputs ---")
# Evaluating if both conditions are True using 'and'
print("Logical AND (x and y):", x and y)          

# Evaluating if at least one condition is True using 'or'
print("Logical OR (x or y):", x or y)            

# Inverting the boolean state of x using 'not'
print("Logical NOT x (not x):", not x)            

# Inverting the boolean state of y using 'not'
print("Logical NOT y (not y):", not y)            
print("\n")


# 4. Assignment Operators
# Instantiating the base tracking accumulator
num = 20

print("--- Assignment Operator Outputs ---")
# Adding 5 to num and reassigning the value
num += 5
print("Value after += :", num)

# Subtracting 3 from num and reassigning the value
num -= 3
print("Value after -= :", num)

# Multiplying num by 2 and reassigning the value
num *= 2
print("Value after *= :", num)

# Dividing num by 4 and reassigning the value
num /= 4
print("Value after /= :", num)

# Dropping decimal values via floor division and reassigning
num //= 2
print("Value after //= :", num)

# Finding the remainder of num divided by 4 and reassigning
num %= 4
print("Value after %= :", num)

# Raising num to the power of 3 and reassigning the value
num **= 3
print("Value after **= :", num)
print("\n")


# 5. Bitwise Operators
# Defining numbers to perform direct binary operations
a_bit = 12
b_bit = 5

print("--- Bitwise Operator Outputs ---")
# Generating the binary representation string using bin()
print("Binary representation of a (12):", bin(a_bit))
print("Binary representation of b (5):", bin(b_bit))

# Comparing bits using bitwise AND (&)
print("Bitwise AND (a & b):", a_bit & b_bit)        

# Combining bits using bitwise OR (|)
print("Bitwise OR (a | b):", a_bit | b_bit)         

# Running binary exclusive OR check using bitwise XOR (^)
print("Bitwise XOR (a ^ b):", a_bit ^ b_bit)        

# Inverting all bit values using bitwise NOT (~)
print("Bitwise NOT (~a):", ~a_bit)                  

# Moving binary spaces to the right by 1 using shift operator (>>)
print("Right Shift (a >> 1):", a_bit >> 1)          

# Moving binary spaces to the left by 2 using shift operator (<<)
print("Left Shift (a << 2):", a_bit << 2)           
print("\n")