from flask import Flask, jsonify, request
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "bjan"
db = SQLAlchemy(app)

# Employee model
class Employee(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    department = db.Column(db.String(100), nullable=False)
    position = db.Column(db.String(100), nullable=False)

    def to_dict(self):
        return {
            "id": self.id,
            "name": self.name,
            "department": self.department,
            "position": self.position
        }

# GET - Retrieve all employees
@app.route("/employees", methods=["GET"])
def get_employees():
    employees = Employee.query.all()
    employee_list = [employee.to_dict() for employee in employees]
    return jsonify(employee_list), 200

# GET - Retrieve a specific employee
@app.route("/employees/<int:employee_id>", methods=["GET"])
def get_employee(employee_id):
    employee = Employee.query.get(employee_id)
    if employee:
        return jsonify(employee.to_dict()), 200
    return jsonify({"error": "Employee not found"}), 404

# POST - Create a new employee
@app.route("/employees", methods=["POST"])
def create_employee():
    data = request.get_json()
    if not data or not all(key in data for key in ["name", "department", "position"]):
        return jsonify({"error": "Invalid input data"}), 400

    employee = Employee(name=data["name"], department=data["department"], position=data["position"])
    db.session.add(employee)
    db.session.commit()
    return jsonify(employee.to_dict()), 201

# PUT - Update an existing employee
@app.route("/employees/<int:employee_id>", methods=["PUT"])
def update_employee(employee_id):
    employee = Employee.query.get(employee_id)
    if not employee:
        return jsonify({"error": "Employee not found"}), 404

    data = request.get_json()
    if not data or not all(key in data for key in ["name", "department", "position"]):
        return jsonify({"error": "Invalid input data"}), 400

    employee.name = data["name"]
    employee.department = data["department"]
    employee.position = data["position"]
    db.session.commit()
    return jsonify(employee.to_dict()), 200

# DELETE - Delete an employee
@app.route("/employees/<int:employee_id>", methods=["DELETE"])
def delete_employee(employee_id):
    employee = Employee.query.get(employee_id)
    if not employee:
        return jsonify({"error": "Employee not found"}), 404

    db.session.delete(employee)
    db.session.commit()
    return "", 204

if __name__ == "__main__":
    app.run()
