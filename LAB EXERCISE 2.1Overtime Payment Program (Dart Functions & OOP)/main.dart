
import 'myLib.dart';

void main() {
  Employee employee = Employee(
    'John',
    4500.0,
    19,
    30.0,
  );

  double totalSalary = employee.calculateTotalSalary();

  print('Total Salary = \$${totalSalary} USD');
}
