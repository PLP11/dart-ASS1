import 'dart:ffi';

void addTwo(int num1, int num2) {
  int sum = num1 + num2;
  print("The sum is $sum");
}

void subtractTwo(int num1, int num2) {
  int subtract = num1 + num2;
  print("The subtraction is $subtract");
}

void multiplyTwo(int num1, int num2) {
  int multiply = num1 * num2;
  print("The multiplication is $multiply");
}

void divideTwo(int num1, int num2) {
  double divide = num1 / num2;
  print("The division is $divide");
}

int stringLength(String inputString) {
  return inputString.length;
}

// Task 6
dynamic getFirstElement(List<dynamic> inputList) {
  if (inputList.isNotEmpty) {
    return inputList[0];
  } else {
    return null;
  }
}

void main() {
  addTwo(50, 20);
  subtractTwo(30, 10);
  multiplyTwo(5, 8);
  divideTwo(81, 9);
  print(stringLength("Hello"));
  print(getFirstElement([1, 2, 3]));
}
