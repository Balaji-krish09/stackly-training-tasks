import mysql.connector
from mysql.connector import Error


def get_connection():
    """
    Establishes and returns a connection to the MySQL database.
    Centralizing this in one function keeps connection handling
    consistent and makes error handling easier to manage.
    """
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Balaji@123",   # Replace with your actual MySQL password
            database="college_db"
        )
        return connection
    except Error as e:
        print(f"Error connecting to database: {e}")
        return None


def add_note():
    """CREATE - Adds a new note to the database."""
    title = input("Enter note title: ").strip()
    description = input("Enter note description: ").strip()

    if not title or not description:
        print("Title and description cannot be empty.\n")
        return

    connection = get_connection()
    if connection is None:
        return

    try:
        cursor = connection.cursor()
        query = "INSERT INTO notes (title, description) VALUES (%s, %s)"
        cursor.execute(query, (title, description))
        connection.commit()
        print(f"Note added successfully with ID {cursor.lastrowid}.\n")
    except Error as e:
        print(f"Error adding note: {e}\n")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()


def view_notes():
    """READ - Retrieves and displays all notes."""
    connection = get_connection()
    if connection is None:
        return

    try:
        cursor = connection.cursor()
        cursor.execute(
            "SELECT note_id, title, description, created_date, updated_date, status FROM notes"
        )
        rows = cursor.fetchall()

        if not rows:
            print("No notes found.\n")
            return

        print("\n" + "-" * 70)
        for row in rows:
            print(f"ID: {row[0]}")
            print(f"Title: {row[1]}")
            print(f"Description: {row[2]}")
            print(f"Created: {row[3]}   Updated: {row[4]}")
            print(f"Status: {row[5]}")
            print("-" * 70)
        print()
    except Error as e:
        print(f"Error fetching notes: {e}\n")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()


def update_note():
    """UPDATE - Modifies an existing note's title and/or description."""
    connection = get_connection()
    if connection is None:
        return

    try:
        note_id = int(input("Enter the Note ID to update: "))
    except ValueError:
        print("Invalid ID. Please enter a number.\n")
        return

    try:
        cursor = connection.cursor()
        cursor.execute("SELECT * FROM notes WHERE note_id = %s", (note_id,))
        if cursor.fetchone() is None:
            print(f"No note found with ID {note_id}.\n")
            return

        new_title = input("Enter new title: ").strip()
        new_description = input("Enter new description: ").strip()

        query = "UPDATE notes SET title = %s, description = %s WHERE note_id = %s"
        cursor.execute(query, (new_title, new_description, note_id))
        connection.commit()

        if cursor.rowcount:
            print(f"Note ID {note_id} updated successfully.\n")
        else:
            print("Update could not be applied.\n")
    except Error as e:
        print(f"Error updating note: {e}\n")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()


def delete_note():
    """DELETE - Removes a note from the database."""
    connection = get_connection()
    if connection is None:
        return

    try:
        note_id = int(input("Enter the Note ID to delete: "))
    except ValueError:
        print("Invalid ID. Please enter a number.\n")
        return

    try:
        cursor = connection.cursor()
        cursor.execute("DELETE FROM notes WHERE note_id = %s", (note_id,))
        connection.commit()

        if cursor.rowcount:
            print(f"Note ID {note_id} deleted successfully.\n")
        else:
            print(f"No note found with ID {note_id}.\n")
    except Error as e:
        print(f"Error deleting note: {e}\n")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()


def display_menu():
    """Displays the main menu options."""
    print("=" * 40)
    print("        NOTES SAVER APPLICATION")
    print("=" * 40)
    print("1. Add a new note")
    print("2. View all notes")
    print("3. Update a note")
    print("4. Delete a note")
    print("5. Exit")
    print("=" * 40)


def main():
    """
    Main program loop. Keeps showing the menu and routing
    the user's choice to the appropriate CRUD function until
    they choose to exit.
    """
    while True:
        display_menu()
        choice = input("Enter your choice (1-5): ").strip()

        if choice == "1":
            add_note()
        elif choice == "2":
            view_notes()
        elif choice == "3":
            update_note()
        elif choice == "4":
            delete_note()
        elif choice == "5":
            print("Exiting Notes Saver Application. Goodbye!")
            break
        else:
            print("Invalid choice. Please enter a number between 1 and 5.\n")


if __name__ == "__main__":
    main()