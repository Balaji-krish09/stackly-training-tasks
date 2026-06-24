# single line comment

'''
multi line comment
doing basics like variables, types, concatenation and type casting
'''

print("--- Demonstration of Required Comments ---")
print("Single-line comment added using '#' symbol.")
print("Multi-line comment added using triple single-quotes symbol.")
print("\n")

# 1. printing my details
print("--- Personal Information ---")
print("Name: Balaji Krishnamoorthy")
print("College Name: Stackly Institute of Technology")
print("City: Mettur")
print("\n")


# 2. variables for name, age, percentage and college
name = "Balaji Krishnamoorthy"
age = 21
percentage = 85.50
college = "Stackly Institute of Technology"

# printing all variables
print("--- Variables Printout ---")
print("Name:", name)
print("Age:", age)
print("Percentage:", percentage)
print("College:", college)
print("\n")


# 3. checking data types using type()
num = 45
decimal_num = 78.95
text = "Stackly Onboarding Module"
is_active = True

print("--- Datatype Verification via type() ---")
print("Value:", num, "| Type:", type(num))
print("Value:", decimal_num, "| Type:", type(decimal_num))
print("Value:", text, "| Type:", type(text))
print("Value:", is_active, "| Type:", type(is_active))
print("\n")


# 4. combining two strings using + operator
str1 = "Learning Python is "
str2 = "the foundation for AI Engineering."
result = str1 + str2

print("--- String Concatenation Output ---")
print("Concatenated String:", result)
print("\n")


# 5. type casting conversions
print("--- Type Casting Operations ---")

# string to int
val1 = "100"
to_int = int(val1)
print("String '100' converted to Integer:", to_int, "| Type:", type(to_int))

# int to string
val2 = 50
to_str = str(val2)
print("Integer 50 converted to String:", "'" + to_str + "'", "| Type:", type(to_str))

# int to float
val3 = 25
to_float = float(val3)
print("Integer 25 converted to Float:", to_float, "| Type:", type(to_float))

# int to boolean
zero = 0
one = 1

bool_zero = bool(zero)
bool_one = bool(one)

print("Integer 0 converted to Boolean:", bool_zero, "| Type:", type(bool_zero))
print("Integer 1 converted to Boolean:", bool_one, "| Type:", type(bool_one))
print("\n")