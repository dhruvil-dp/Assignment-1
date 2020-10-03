import 'dart:io';

class Emp {
  int id;
  String name;
  double basic, hra, da, ta, bonus, pf, g_s, n_s;
  void read_details() {
    print('Enter Employee Id:');
    id = int.parse(stdin.readLineSync());
    print('Enter Employee Name:');
    name = stdin.readLineSync();
    print('Enter Employee Salary:');
    basic = double.parse(stdin.readLineSync());
  }

  double gross_salary() {
    hra = basic * 0.3;
    da = basic * 0.1;
    ta = basic * 0.2;
    bonus = basic * 0.05;
    pf = bonus;
    g_s = (basic + hra + da + ta + bonus) - pf;
    return g_s;
  }

  double total_salary() {
    if (basic > 80000) {
      return n_s = g_s - (0.3 * g_s); // salary > 10L
    } else if (basic > 60000 && basic < 80000) {
      return n_s = g_s - (0.2 * g_s); // salary 7L - 10L
    } else if (basic > 40000 && basic < 60000) {
      return n_s = g_s - (0.1 * g_s); // salary 5L - 7L
    }
    return n_s = g_s; // salary < 5L
  }

  void print_details() {
    print('Employee Id           : $id');
    print('Employee Name         : $name');
    print('Employee Basic Salary : ₹$basic');
    print('Employee H            : ₹$hra');
    print('Employee DA           : ₹$da');
    print('Employee TA           : ₹$ta');
    print('Employee Bonus        : ₹$bonus');
    print('Employee PF           : ₹$pf');
    print('Employee Gross Salary : ₹$g_s');
    print('Employee Net Salary   : ₹$n_s');
  }
}

void main() {
  Emp emp = Emp();
  emp.read_details();
  emp.gross_salary();
  emp.total_salary();
  emp.print_details();
}
