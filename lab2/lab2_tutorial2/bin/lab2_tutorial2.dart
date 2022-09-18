import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
import "dart:math";

void main(List<String> arguments) {
	// COMMENTS

	// a = 5 + 6; Anything inside a comment in not printed
	// Single-line comment
	/*
		Multi-line comment
	*/
	/* Comments can also be nested
		/*A nested comment */	
	*/
	/// Single-line documentation comment
	/** Multi-line
	 * documentation
	 * comments
	 */

	/// This function prints the argument supplied onto the console. Ctrl + Click on print to go to the Flutter docs and read about print()
	print("Hello");

	/// statements tell the computer what to do, while expressions is a value and it doesn't do anything.
	
	/// The result is stored in a memeory address and hence it is executed even though it not assigned somewhere.
	42 + 2;

	/// The variable is unassigned so it will give an error.
	// x;

	/// Dart ignores whitespaces around the characters, hence both of these mean the same. Press Shift + Alt + F to Format the code.
	42+2;
	42 + 2;

	/**
	 * Notable types of operators in Dart:
	 * (/) --> simple division operator will generate results in decimal
	 * (~/) --> truncating division operator will generate results in integer
	 * (%) --> Euclidean modulo operator
	 */
	print(8/7); // 1.1428571428571428
	print(8~/7); // 1

	/// Operator precendence matters according to the BODMAS rule
	print(350/5+2);
	print(350/(5+2));

	/// There are a lot of library math functions available in dart. To load them in our code, we must include the math library. (Imported at the top)
	/// dart:math is a Core Library of Dart
	
	/// pi and sin() are available in the dart:math library
	print(sin(pi / 2)); // 1.0

	print(sqrt(2)); /// 1.4142135623730951 
	/// This won't stop the execution of the program like in C, but will instead print NaN indicating that the output is Not a Number.
	print(sqrt(-2));

	/// MINI_EXERCISE
	/// Now print the value of 1 over the square root of 2 in Dart. Confirm that it equals the sine of 45°.
	print(1/sqrt(2));
	print(sin(pi/4));
	/// Yes both of them are equal.
	
	/// This is the variable declaration, followed by variable assignment.
	int number;
	number = 5;
	print(number);

	/// NOTE: In dart, there are no primitive data types. Everything in dart is an Object.
	/// Because they are objects, we can actually access attributes and call methods on the numbers.
	print(10.isEven);
	/// Automatically differentiates between the decimal . and the method invoker .
	print(5.2.round());

	/// Dart has type-safety so no later change of type allowed
	// int age = 19;
	// age = "20";

	/// num type = int type or double type
	/// Solution?
	/// Use "dynamic" types. NOT RECOMMENDED
	dynamic age = 19;
	print("int age = $age");
	age = "20";
	print("string age = $age");

	/// var lets dart automatically infer the data type
	var n = 20; // dart determines that this is an int

	/// There are 2 types of immutable data types in dart: const, final
	/// const is used when the values are known at the compile time and final is used when the values are to be determined at the run time.
	const x = 5; // Works
	// const curr_time = DateTime.now().hour; will not work
	final curr_time = DateTime.now();
	print(curr_time); // works

	/// MINI EXERCISE
	print("\n MINI - EXERCISE");
	int myAge = 19;
	double averageAge = 19;
	averageAge = (19 + 18)/2;
	print("myAge: $myAge, averageAge = $averageAge");

	const testNumber = 91;
	const evenOdd = testNumber % 2;
	print("testNumber = $testNumber, evenOdd = $evenOdd");
	/// const cannot be reassigned
	/// also, const can only be assigned to another const.
	// testNumber = 90;
	print("testNumber = $testNumber, evenOdd = $evenOdd");

  /// CHALLENGE 1
  int myAge2 = 19, dogs = 4;
  dogs++;
  print("myAge = $myAge2, Dogs = $dogs");

  /// CHALLENGE 2
  var age2 = 16;
  print(age2);
  age2 = 30;
  print(age2);

  /// CHALLENGE 3
  const a = 46, b = 10;
  const ans1 = (a * 100) + b;
  const ans2 = (a * 100) + (b * 100);
  const ans3 = (a * 100) + (b / 10);
  print("ans1: $ans1, ans2: $ans2, ans3: $ans3");

  /// CHALLENGE 4
  double rating1 = 5.6, rating2 = 6.9, rating3 = 4.8;
  double averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  /// CHALLENGE 5
  // px^2 + qx + c
  double p = 1, q = 10, c = 25.0;
  double D = sqrt(pow(q, 2) - (4 * p * c));
  double root1 = (-q + D) / 2, root2 = (-q - D) / 2;
  print("root1: $root1, root2: $root2");
}
