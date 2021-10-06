import 'dart:html';
import 'dart:io';

import 'dart:math';

class calc {
  int addition(int num1, int num2) {
    return num1 + num2;
  }

  int subtraction(int num1, int num2) {
    return num1 - num2;
  }

  int division(int num1, int num2) {
    try {
      num2 == 0;
    } catch (e) {
      print("the error is $e");
    } finally {
      return num1 ~/ num2;
    } // end try catch
  } // end division

  int multipliction(int num1, int num2) {
    return num1 * num2;
  }
} //end calc class

void main() {
  var calculator1 = calc();
  print("Enter the first number");
  int firstNumber = int.parse(stdin.readLineSync()!);
  print("Enter the second number");
  int seconedNumber = int.parse(stdin.readLineSync()!);

  // String opration = "+" , "-" , "*" , "/" ;
  print("choose the opration");
  String? opration = (stdin.readLineSync()!);
/* if (opration != "+" || opration != "-" ||opration !="*" ||opration !="/") */
  theForLoop:
  for (int i = 0; i < 3; i++) {
    if (opration != "+" "-" "*" "/") {
      print("error");
      break theForLoop;

      switch (opration) {
        case "+":
          print(calculator1.addition(firstNumber, seconedNumber));
          break;
        case "-":
          print(calculator1.subtraction(firstNumber, seconedNumber));
          break;
        case "/":
          // if (seconedNumber == 0) {
          //   break;
          // } else
          print(calculator1.division(firstNumber, seconedNumber));
          break;
        case "*":
          print(calculator1.multipliction(firstNumber, seconedNumber));
          break;

        default:
          break;
      }
    }
  } // end switch
} // end main

// البونص : قسمه على زيرو تراي كاتشش
// علامات الاستخدام +-/* استخدام وايل لوب

