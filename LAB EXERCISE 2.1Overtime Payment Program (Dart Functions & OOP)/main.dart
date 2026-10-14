
import 'myLib.dart';

void main() {
  Employee employee = Employee(
    'Kevin De Bruyne',
    4500.0,
    19,
    30.0,
  );

  double totalSalary = employee.calculateTotalSalary();

  print('Total Salary = \$${totalSalary} USD');
}
