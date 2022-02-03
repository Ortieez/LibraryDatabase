import mariadb
import sys

class Connection:
        def __init__(self):
            try: 
                self.conn = mariadb.connect(
                    user="root",
                    password="",
                    host="127.0.0.1",
                    port=3306,
                    database="knihovna"
                )
                self.conn.autocommit = False
                self.cursor = self.conn.cursor()
            except mariadb.Error as errorConnect:
                print(f"Error connecting to MariaDB Platform: {errorConnect}")
                sys.exit(1)

        def selectBooks(self):
            self.array = []
            self.cursor.execute("SELECT Název,Autor,Počet_Stran,Žánr,Status FROM knihy")
            for object in self.cursor:
                self.array.append(object)
            return self.array

        def selectDepartments(self):
            self.array = []
            self.cursor.execute("SELECT Název,Zaměření FROM oddělení")
            for object in self.cursor:
                self.array.append(object)
            return self.array

        def selectEmployees(self):
            self.array = []
            self.cursor.execute("SELECT Jméno,Příjmení,Datum_Narození FROM zaměstnanci")
            for object in self.cursor:
                self.array.append(object)
            return self.array

def run():
    database = Connection()
    books = database.selectBooks()
    departments = database.selectDepartments()
    employees = database.selectEmployees()
        
if __name__ == '__main__':
    run()
    