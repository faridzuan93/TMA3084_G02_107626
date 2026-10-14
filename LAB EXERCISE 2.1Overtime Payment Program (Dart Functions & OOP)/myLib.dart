
class Employee {
  String name;
  double basicSalary;
  int overtimeHours;
  double overtimeRate;

  Employee(
    this.name,
    this.basicSalary,
    this.overtimeHours,
    this.overtimeRate,
  );

  double calculateOvertimePay() {
    return overtimeHours * overtimeRate;
  }

  double calculateTotalSalary() {
    return basicSalary + calculateOvertimePay();
  }
}
