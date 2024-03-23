import 'dart:io';

// Interface definition
abstract class Person {
  void introduce();
}

// Base class implementing the interface
class BasePerson implements Person {
  String name;
  int age;
  String gender;

  BasePerson(this.name, this.age, this.gender);

  @override
  void introduce() {
    print("Hello, my name is $name. I am $age years old and I am $gender.");
  }
}

// Subclass inheriting from the BasePerson class
class Employee extends BasePerson {
  String position;

  Employee(String name, int age, String gender, this.position)
      : super(name, age, gender);

  // Override the introduce method to add position
  @override
  void introduce() {
    super.introduce();
    print("I work as a $position.");
  }

  // Method demonstrating the use of a loop
  void countTo(int num) {
    for (var i = 1; i <= num; i++) {
      stdout.write("$i ");
    }
    print("");
  }
}

void main() {
  // Create an instance of Employee initialized with data from a file
  var employee = readEmployeeFromFile("employee_data.txt");
  employee.introduce();

  // Demonstrate the use of a loop
  print("Counting to 5:");
  employee.countTo(5);
}

// Function to read employee data from a file and return an Employee instance
Employee readEmployeeFromFile(String filename) {
  var file = File(filename);
  var lines = file.readAsLinesSync();
  var data = lines[0].split(',');
  return Employee(data[0], int.parse(data[1]), data[2], data[3]);
}
