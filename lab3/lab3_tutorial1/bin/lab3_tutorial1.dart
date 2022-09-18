import 'dart:ffi';
import 'dart:io';

import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;
import 'dart:math';

void main(List<String> arguments) {
  /// LOOPS
  int counter;

/*
  // while loop
  counter = 3;
  while (counter > 0) {
    counter--; // don't forget to update condition as it may cause an infinite loop
    print("Iteration $counter");
  }
*/

/*
  /// DO WHILE LOOP
  counter = 0;
  // gives no output! Why? because in while loop, the condition is checked first and then based on the condition the loop body is executed.
  while (counter > 0) {
    print("while iteration");
  }
  // gives output once even if the condition is false, because the loop body is executed before any condition is checked. Hence, the do-while loop executes its body atleast 1 time.
  do {
    print("do-while iteration");
  } while (counter > 0);
*/

/*
  /// BREAK Keyword
  // break quits the on-going loop even when the condition is satisfied
  counter = 3;
  while (counter > 0) {
    print(" iteration $counter");
    if (counter == 2) {
      print("Encountered break: quitting...");
      break;
    }
    counter--;
  }
*/

/*
  /// RANDOM NUMBERS
  counter = 1;
  final random = Random();
  do {
    // generates random number: range = 1 + [0, 5] = [1, 6]
    counter = 1 + random.nextInt(6);
    // we can print without having a new line
    // prints to the out stream
    stdout.write("$counter ");
  } while (counter < 6);
  print("");
*/

/*
  /// FOR LOOPS
  counter = 5;
  for (int i = 0; i < counter; i++) {
    if (i == 2 || i == 3) {
      // can be used to skip remaining block for the current iteration
      continue;
    }
    print("for loop: iteration $i");
    // this kind of loop is helpful when we want to iterate for a known number of times
  }
*/

/*
  /// FOR-IN LOOP
  // this loop can be used to iterate over each element of a collection. In case of this string, it iterates over all runes of a string
  // iterates in order
  const fact = 'I ❤ Dart';
  for (var rune in fact.runes) {
    // fromCharCode() converts rune to a string
    print(String.fromCharCode(rune));
  }

  // gives error, as the scope of rune is only inside the for-in loop
  // print(rune);
*/

/*
  /// FOR-EACH LOOP
  const numList = [1, 2, 3, 5, 9];
  numList.forEach((element) {
    print(element);
  });

  // not allowed to use => and more than one line of code together. => is used only when there is one line to follow in a function
  // braces with => are allowed (=> {}) ✔(allowed)
  // numList.forEach((element) => { print(element); });
*/

/*
  /// MINI-EXERCISES
  // 1.
  counter = 0;
  while (counter < 10) {
    print("counter is $counter");
    counter++;
  }
  print("");

  // 2.
  for (int i = 1; i <= 10; i++) {
    print("square of $i is ${i * i}");
  }
  print("");

  // 3.
  const numbers = [1, 2, 4, 7];
  for (num i in numbers) {
    print("square root of $i is ${sqrt(i)}");
  }
  print("");

  // 4.
  numbers.forEach((element) => print("$element -> ${sqrt(element)}"));
*/

  /// CHALLENGES
  // 1.
  const firstName = 'Bob';
  if (firstName == 'Bob') {
    const lastName = 'Smith';
  } else if (firstName == 'Ray') {
    const lastName = 'Wenderlich';
  }

  // error -> the variable lastname is defined inside the scope of the if else statements. Hence, it will not be accessible outside the scope. There is no error syntactically, but there is an error logically.

  // 2.
  // (i) true && true = true
  // (ii) false || false = false
  // (iii) (true && 1 != 2) -> (true && true) = true
  // (4 > 3 && 100 < 1) -> (true && false) = false
  // true || false = true
  // (iv) ((10/2) > 3 && (10 % 2) == 0) -> (true && true) = true

  // 3.
  const int powerInp = 66;
  final higherPower = 1 + (log(powerInp) / log(2)).toInt();
  print(higherPower);

  // 4.
  int fFibo = 1;
  int sFibo = 1;
  const int n = 7;
  for (int i = 2; i < n; i++) {
    int curr = fFibo + sFibo;
    fFibo = sFibo;
    sFibo = curr;
  }
  print(sFibo);

  // 5.
  // 6 iterations
  // sum = 15;

  // var sum = 0;
  // for (var i = 0; i <= 5; i++) {
  //   sum += i;
  // }
  // print(sum);
}
