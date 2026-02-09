/* 
Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
that increases the salary. In main(), create an employee, give them a raise, and print the new
salary. */

class Employee {
  String name;
  double salary;
  Employee({required this.name, required this.salary});
  double giveRaise(int amount) {
    salary += amount;
    return salary;
  }
}

void main() {
  Employee employee = Employee(name: "Ezz", salary: 50000);
  print(employee.salary);
  print('--------------------------------------------');
  print(employee.giveRaise(2000));
}
