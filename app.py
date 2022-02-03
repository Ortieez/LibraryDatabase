import database
import sys
from flask import Flask, render_template

app = Flask(__name__)

class Website:
    def __init__(self):
        self.db = database.Connection()
        self.books = self.db.selectBooks()
        self.departments = self.db.selectDepartments()
        self.employees = self.db.selectEmployees()

    def run(self):
        app.run()

    @app.route("/")
    def index():
        return render_template('index.html', books=DB.books, departments=DB.departments, employees=DB.employees)

if __name__ == '__main__':
    DB = Website()
    DB.run()
   
