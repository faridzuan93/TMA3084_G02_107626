import 'dart:io';

void main() {
  bool ordering = true;
  double grandTotal = 0.0;

  while (ordering) {
    print('\n=== Pizza Order ===');
    print('Small  = 5 USD');
    print('Medium = 7 USD');
    print('Large  = 10 USD');

    stdout.write('Enter pizza size (Small/Medium/Large): ');
    String size = stdin.readLineSync()!.toLowerCase();

    stdout.write('Enter quantity: ');
    int quantity = int.tryParse(stdin.readLineSync()!) ?? 0;

    double total = 0.0;

    if (quantity <= 0) {
      print('Invalid quantity.');
      continue;
    }

    switch (size) {
      case 'small':
        total = 5.0 * quantity;
        break;
      case 'medium':
        total = 7.0 * quantity;
        break;
      case 'large':
        total = 10.0 * quantity;
        break;
      default:
        print('Invalid pizza size.');
        continue;
    }

    grandTotal += total;

    print('Total for this order: \$${total.toStringAsFixed(2)} USD');

    stdout.write('Do you want to order again? (yes/no): ');
    String answer = stdin.readLineSync()!.toLowerCase();

    if (answer != 'yes') {
      ordering = false;
    }
  }

  print('\nFinal total payment: \$${grandTotal.toStringAsFixed(2)} USD');
  print('Thank you for ordering!');
}