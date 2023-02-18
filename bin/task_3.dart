import 'dart:io';

import 'package:task_3/task_3.dart' as task_3;

void main(List<String> arguments) {
  // factorial
  int ans = 1;
  stdout.write("Enter the number: ");
  int number = int.parse(stdin.readLineSync()!);
  while (number > 1) {
    ans *= number;
    number--;
  }
  print("the factorial of number $ans");

  print("=" * 50);

  // print pattern.
  for (int i = 0; i < 5; i++) print("*" * (i + 1));

  print("=" * 50);

  // calculates power of number
  stdout.write("Enter the number: ");
  number = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the power: ");
  int power = int.parse(stdin.readLineSync()!);
  print("The result = ${CalculatePower(number: number, power: power)}");

  print("=" * 50);

  // number prime
  stdout.write("Enter the number: ");
  number = int.parse(stdin.readLineSync()!);
  print((isPrime(number: number)) ? "Number is Prime" : "Number is not Prime");
}

int CalculatePower({required int number, required int power}) {
  int ans = 1;
  while (power > 0) {
    ans *= number;
    power--;
  }
  return ans;
}

bool isPrime({required int number}) {
  bool check = true;
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      check = false;
      break;
    }
  }
  return check;
}
