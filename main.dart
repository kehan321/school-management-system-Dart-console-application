import 'dart:io';

class Student {
  String name;
  var age;
  String grade;
  String Class;

  Student(this.name, this.age, this.grade, this.Class);

  void displayInfo() {
    print('Name: $name, Age: $age, Grade: $grade, Class: $Class');
  }
}

class Staff {
  String name;
  var age;
  String position;

  Staff(this.name, this.age, this.position);

  void displayInfo() {
    print('Name: $name, Age: $age, Position: $position');
  }
}

void main() {
  List<Student> students = [];
  List<Staff> staff = [];

  do {
    print('1. Students\n2. Staff\n3. Exit');
    stdout.write("Enter your Choice: ");
    String mainChoice = stdin.readLineSync()!;

    switch (mainChoice) {
      case '1':
        studentMenu(students);
        break;

      case '2':
        staffMenu(staff);
        break;

      case '3':
        exit(0);

      default:
        print('Invalid choice. Please try again');
    }
  } while (true);
}

void studentMenu(List<Student> students) {
  do {
    print('1. Add Student\n2. Display Students\n3. Delete Student\n4. Back to Main Menu');
    stdout.write("Enter your Choice: ");
    String studentChoice = stdin.readLineSync()!;

    switch (studentChoice) {
      case '1':
        addStudent(students);
        break;

      case '2':
        displayStudents(students);
        break;

      case '3':
        deleteStudent(students);
        break;

      case '4':
        return;

      default:
        print('Invalid choice. Please try again');
    }
  } while (true);
}

void staffMenu(List<Staff> staff) {
  do {
    print('1. Add Staff\n2. Display Staff\n3. Delete Staff\n4. Back to Main Menu');
    stdout.write("Enter your Choice: ");
    String staffChoice = stdin.readLineSync()!;

    switch (staffChoice) {
      case '1':
        addStaff(staff);
        break;

      case '2':
        displayStaff(staff);
        break;

      case '3':
        deleteStaff(staff);
        break;

      case '4':
        return;

      default:
        print('Invalid choice. Please try again');
    }
  } while (true);
}

void deleteStudent(List<Student> students) {
  if (students.isEmpty) {
    print('No students to delete.');
  } else {
    stdout.write("Enter the index of the student to delete: ");
    int index = int.parse(stdin.readLineSync()!);

    if (index >= 0 && index < students.length) {
      students.removeAt(index);
      print('Student deleted successfully.');
    } else {
      print('Invalid index. No student deleted.');
    }
  }
}

void deleteStaff(List<Staff> staff) {
  if (staff.isEmpty) {
    print('No staff to delete.');
  } else {
    stdout.write("Enter the index of the staff to delete: ");
    int index = int.parse(stdin.readLineSync()!);

    if (index >= 0 && index < staff.length) {
      staff.removeAt(index);
      print('Staff member deleted successfully.');
    } else {
      print('Invalid index. No staff member deleted.');
    }
  }
}

void addStaff(List<Staff> staff) {
  stdout.write("Enter Staff name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Staff age: ");
  String age = stdin.readLineSync()!;

  stdout.write("Enter Staff position: ");
  String position = stdin.readLineSync()!;

  var newStaff = Staff(name, age, position);
  staff.add(newStaff);
}

void displayStaff(List<Staff> staff) {
  if (staff.isEmpty) {
    print('No staff to display.');
  } else {
    print('\nList of Staff:');
    for (var member in staff) {
      member.displayInfo();
    }
  }
}

void addStudent(List<Student> students) {
  stdout.write("Enter Student name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Student age: ");
  String age = stdin.readLineSync()!;

  stdout.write("Enter Student class: ");
  String Class = stdin.readLineSync()!;

  stdout.write("Enter Student grade: ");
  String grade = stdin.readLineSync()!;

  var newStudent = Student(name, age, grade, Class);
  students.add(newStudent);
}

void displayStudents(List<Student> students) {
  if (students.isEmpty) {
    print('No students to display.');
  } else {
    print('\nList of Students:');
    for (var student in students) {
      student.displayInfo();
    }
  }
}
