# 1. Create a list containing at least 10 elements
tech_stack = ["Python", "MySQL", "Git", "VS Code", "Java", "C++", "HTML", "CSS", "JavaScript", "Docker"]
print(f"Initial List: {tech_stack}\n")

# 2. Add an element using append()
tech_stack.append("AWS")
print(f"After append(): {tech_stack}\n")

# 3. Insert an element at the 3rd position using insert()
tech_stack.insert(2, "Django")
print(f"After insert(): {tech_stack}\n")

# 4. Add multiple elements using extend()
tech_stack.extend(["Flask", "React"])
print(f"After extend(): {tech_stack}\n")

# 5. Remove an element using remove()
tech_stack.remove("Java")
print(f"After remove(): {tech_stack}\n")

# 6. Remove the last element using pop()
tech_stack.pop()
print(f"After pop(): {tech_stack}\n")

# 7. Remove an element at a specific index using pop(index)
tech_stack.pop(4)
print(f"After pop(index): {tech_stack}\n")

# 8. Count the occurrences of an element using count()
element_count = tech_stack.count("Python")
print(f"Count of 'Python': {element_count}")
print(f"List state: {tech_stack}\n")

# 9. Find the index of an element using index()
element_index = tech_stack.index("Git")
print(f"Index of 'Git': {element_index}")
print(f"List state: {tech_stack}\n")

# 10. Reverse the list using reverse()
tech_stack.reverse()
print(f"After reverse(): {tech_stack}\n")

# 11. Sort the list using sort()
tech_stack.sort()
print(f"After sort(): {tech_stack}\n")

# 12. Create a copy of the list using copy()
copied_list = tech_stack.copy()
print(f"Copied List: {copied_list}\n\n")


print("==================== PART 2: PYTHON - TUPLES ====================\n")

# 1. Create a tuple containing at least 8 elements
marks_tuple = (85, 92, 78, 88, 95, 90, 82, 89)
print(f"Initial Tuple: {marks_tuple}\n")

# 2. Find the number of occurrences of an element using count()
occurrences_count = marks_tuple.count(90)
print(f"Occurrences of 90: {occurrences_count}\n")

# 3. Find the index of an element using index()
position_index = marks_tuple.index(95)
print(f"Index of 95: {position_index}\n")

# 4. Access and print: First element
print(f"First element: {marks_tuple[0]}")

# 5. Access and print: Last element
print(f"Last element: {marks_tuple[-1]}")

# 6. Access and print: Fifth element
print(f"Fifth element: {marks_tuple[4]}\n")

# 7. Tuple unpacking: Create a tuple with three values, unpack into three separate variables, and print
framework_tuple = ("FastAPI", "Express", "Spring")
var1, var2, var3 = framework_tuple
print("--- Tuple Unpacking Results ---")
print(f"Variable 1: {var1}")
print(f"Variable 2: {var2}")
print(f"Variable 3: {var3}\n")

# 8. List unpacking: Demonstrate list unpacking using a list with three elements
database_list = ["MySQL", "PostgreSQL", "MongoDB"]
db1, db2, db3 = database_list
print("--- List Unpacking Results ---")
print(f"Database 1: {db1}")
print(f"Database 2: {db2}")
print(f"Database 3: {db3}")