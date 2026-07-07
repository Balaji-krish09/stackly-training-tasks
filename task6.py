# ==============================================================================
# STANDALONE TESTING: Python Sets, Dictionaries & Functions Suite
# ==============================================================================

print("==================== PART 1: PYTHON SETS ====================")
set_a = {10, 20, 30, 40, 50, 60}
set_b = {40, 50, 60, 70, 80, 90}
print(f"Initial Set A: {set_a}\nInitial Set B: {set_b}\n")

set_a.add(100)
print(f"After add(100): {set_a}")
set_a.remove(20)
print(f"After remove(20): {set_a}")
print(f"Union: {set_a.union(set_b)}")
print(f"Intersection: {set_a.intersection(set_b)}")
print(f"Difference (A - B): {set_a.difference(set_b)}")

copied_set = set_a.copy()
copied_set.clear()
print(f"Cleared Copy Set: {copied_set}\n")


print("==================== PART 2: PYTHON DICTIONARIES ====================")
student = {"id": 101, "name": "Balaji Krishnamoorthy", "age": 21, "city": "Chennai", "course": "Computer Science"}
print(f"Initial Student: {student}\n")
print(f"Keys: {student.keys()}")
print(f"Values: {student.values()}")
print(f"Items: {student.items()}\n")
student.pop("course")
print(f"After Pop: {student}")
student.clear()
print(f"After Clear: {student}\n")


print("==================== PART 3: PYTHON FUNCTIONS ====================")
def welcome_message():
    print("Welcome to Stackly Advanced Python Training Session!")

def add_numbers(num1, num2):
    print(f"Sum Calculation: {num1} + {num2} = {num1 + num2}")

def square_number(num):
    print(f"Square Calculation: {num}^2 = {num * num}")

def largest_of_two(num1, num2):
    print(f"Largest between {num1} and {num2} is: {num1 if num1 > num2 else num2}")

def greet_user(username="Developer"):
    print(f"Hello, {username}!")

def sum_all_numbers(*args):
    print(f"Sum of args {args} is: {sum(args)}")

def display_profile(**kwargs):
    for key, value in kwargs.items():
        print(f"  {key}: {value}")

def return_sum(a, b): return a + b
def return_cube(num): return num * num * num
def return_largest_of_three(a, b, c): return max(a, b, c)

welcome_message()
add_numbers(15, 25)
largest_of_two(num2=50, num1=85)
greet_user()
sum_all_numbers(10, 20, 30, 40)
display_profile(Name="Balaji K", Domain="AI Engineering")

calc_sum = return_sum(45, 55)
calc_cube = return_cube(4)
calc_largest = return_largest_of_three(72, 95, 43)
print(f"\nReturned Sum: {calc_sum}\nReturned Cube: {calc_cube}\nReturned Largest: {calc_largest}")