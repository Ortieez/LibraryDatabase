import database
import sys
from flask import Flask, render_template

app = Flask(__name__)

db = database.Connection()
books = db.selectBooks()
departments = db.selectDepartments()
employees = db.selectEmployees()

@app.route("/")
def index():
    return render_template('index.html', books=books, departments=departments, employees=employees)

if __name__ == '__main__':
    app.run(debug=True)