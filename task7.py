print("==================== PYTHON STRINGS CORE TASKS ====================\n")

first_name = "Balaji"
last_name = "Krishnamoorthy"
city = "Chennai"

full_name = first_name + " " + last_name
print(f"Concatenated Full Name: {full_name}")

repeated_city = (city + " ") * 3
print(f"Repeated City Name: {repeated_city.strip()}\n")

print(f"Upper Case: {full_name.upper()}")
print(f"Lower Case: {full_name.lower()}")
print(f"Title Case: {full_name.title()}")
print(f"Capitalized: {city.capitalize()}\n")

spaced_string = "   Python Developer   "
print(f"Original Spaced String: '{spaced_string}'")
print(f"After strip(): '{spaced_string.strip()}'")
print(f"After lstrip(): '{spaced_string.lstrip()}'")
print(f"After rstrip(): '{spaced_string.rstrip()}'\n")

sample_sentence = "Python is easy to learn"
word_list = sample_sentence.split()
print(f"Split List of Words: {word_list}")

new_sentence = " ".join(word_list)
print(f"Joined Sentence: {new_sentence}\n")

target_string = "programming logic"
position = target_string.find("logic")
char_count = target_string.count("r")
print(f"Position of 'logic': {position}")
print(f"Count of character 'r': {char_count}\n")

test_str = "Stackly2026"
print(f"Starts with 'Stack': {test_str.startswith('Stack')}")
print(f"Ends with '2026': {test_str.endswith('2026')}")
print(f"Is completely alphabetical: {test_str.isalpha()}")
print(f"Is completely digital/numeric: {test_str.isdigit()}")
print(f"Is alphanumeric: {test_str.isalnum()}\n")

batch_year = 2026
profile_desc = f"Developer {full_name} belongs to the {batch_year} training batch."
print(f"Formatted String: {profile_desc}\n")

print("--- Demonstrating Escape Characters ---")
escaped_text = "Task Details:\n\t- Technology:\tPython & MySQL\n\t- Level:\tAdvanced Subqueries"
print(escaped_text)