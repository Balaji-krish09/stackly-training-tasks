import os

print("==================== PYTHON FILE HANDLING TASKS ====================\n")

# 1. Pre-requisite Setup: Initialize student.txt for reading demonstrations
print("[System] Generating student.txt for standard read tracking...")
with open("student.txt", "w") as init_file:
    init_file.write("Balaji Krishnamoorthy - CSE\nLine 2: Stackly Python Module\nLine 3: File Handling Tasks\n")

# 2. Read complete file using read()
print("\n--> Reading complete file using read():")
file_ref1 = open("student.txt", "r")
entire_content = file_ref1.read()
print(entire_content)
file_ref1.close()

# 3. Read the first line using readline()
print("--> Reading the first line using readline():")
file_ref2 = open("student.txt", "r")
first_line = file_ref2.readline()
print(f"Result (Stripped): {first_line.strip()}")
file_ref2.close()

# 4. Read all lines into an array list using readlines()
print("\n--> Reading all lines using readlines():")
file_ref3 = open("student.txt", "r")
list_of_lines = file_ref3.readlines()
print(f"Compiled Lines Array List: {list_of_lines}")
file_ref3.close()

# 5. Document edits inside notes.txt using write() and append mode
print("\n[System] Constructing notes.txt with 5 baseline entries...")
notes_write = open("notes.txt", "w")
notes_write.write("Line #1: Core Systems Engineering Notes\n")
notes_write.write("Line #2: Transactions trace atomic routines\n")
notes_write.write("Line #3: Views maintain presentation layers\n")
notes_write.write("Line #4: Exceptions guard runtime safety boundaries\n")
notes_write.write("Line #5: Git syncs repository metrics online\n")
notes_write.close()

print("[System] Re-opening notes.txt in append mode to inject 3 extra lines...")
notes_append = open("notes.txt", "a")
notes_append.write("Line #6 (Appended): Context managers clear leaks\n")
notes_append.write("Line #7 (Appended): Rollbacks drop memory changes\n")
notes_append.write("Line #8 (Appended): Portfolio dashboard layout finalized\n")
notes_append.close()

# 6. Create a new file exclusively using 'x' mode flags
log_filename = "fresh_log.txt"
if os.path.exists(log_filename):
    os.remove(log_filename)

print(f"[System] Initializing new trace reference using 'x' mode: {log_filename}")
fresh_file = open(log_filename, "x")
fresh_file.write("Exclusive creation tracking log initiated successfully.")
fresh_file.close()

# 7. Rewrite layout safely using standard 'with open' context managers
print("\n--> Displaying verified data buffer via 'with open' Context Manager:")
with open("notes.txt", "r") as safe_file:
    data_buffer = safe_file.read()
    print(data_buffer)


print("\n==================== PYTHON EXCEPTION HANDLING TASKS ====================\n")

# 1. NameError Routine
print("--- Launching NameError Sandbox Segment ---")
try:
    print(undefined_variable_name)
except NameError as name_error:
    print(f"Captured Expected NameError: {name_error}")
finally:
    print("NameError execution sandbox cleanly exited.\n")

# 2. TypeError Routine
print("--- Launching TypeError Sandbox Segment ---")
try:
    invalid_combination = "Balaji" + 2026
except TypeError as type_error:
    print(f"Captured Expected TypeError: {type_error}")
finally:
    print("TypeError execution sandbox cleanly exited.\n")

# 3. ValueError Routine
print("--- Launching ValueError Sandbox Segment ---")
try:
    malformed_integer = int("Stackly_Training")
except ValueError as value_error:
    print(f"Captured Expected ValueError: {value_error}")
finally:
    print("ValueError execution sandbox cleanly exited.\n")

# 4. ZeroDivisionError Routine
print("--- Launching ZeroDivisionError Sandbox Segment ---")
try:
    arithmetic_fault = 100 / 0
except ZeroDivisionError as zero_div_error:
    print(f"Captured Expected ZeroDivisionError: {zero_div_error}")
finally:
    print("ZeroDivisionError execution sandbox cleanly exited.")