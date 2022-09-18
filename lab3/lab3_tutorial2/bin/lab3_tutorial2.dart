import 'package:lab3_tutorial2/lab3_tutorial2.dart' as lab3_tutorial2;
import 'dart:math';

String greet(String name) {
  return "Hello $name!";
}

void main() {
  /// FUNCTIONS
  /// <return-type><function-name>(<params>) => function signature
  /// {
  ///   code...
  ///   return <return-value>;
  /// } => function code

  const name = "Shrey";
  greet(name);

  // use of function
  // to not repeat the piece of code

  var b1 = 120;

  if (b1 > 100) {
    print("It is greater");
  } else {
    print("It is smaller");
  }

  b1 = 90;

  if (b1 > 100) {
    print("It is greater");
  } else {
    print("it is smaller");
  }

  // in above code the same condition is repeating two times
  //so to avoid this function used

  void check(int b1) {
    if (b1 > 100) {
      print("It is greater");
    } else {
      print("it is smaller");
    }
  }

  check(b1);
  b1 = 390;
  check(b1);

  // using multiparameter and return type

  String greeting(String fname, String lname) {
    return "Wecome $fname $lname";
  }

  String str3 = greeting("John", "garry");
  print(str3);

  // making parameter optional
  String greeting1(String fname, String lname, [String? mname]) {
    return "Wecome $fname $mname $lname";
  }

  // ? after String means nullable string

  // Error if we provide unsufficient args
  // String str3 = greeting("Johny")

  // Default value parameter
  String greeting2(String fname, String lname, [String mname = "Walker"]) {
    return "Wecome $fname $mname $lname";
  }

  // if we dont provide the optional parameter value then the default one is consider
  // Example
  print(greeting2("fname", "lname"));

  // We can also override that value
  print(greeting2("fname", "lname", "lname"));

  // Naming parameter
  // It is used for readability for the programer to have clear understaning about variable from calling side and in the function

  // for name parameter '{}' is used
  // example

  bool isValBetween(int val, {int min = 0, int max = 100}) {
    return min <= val && max >= val;
  }

  print(isValBetween(87, min: 50, max: 100));

  // We can not provide value without naming parameter
  // error
  // isValBetween(87, 50, 100);

//   Named parameters are
// optional by default, but value can’t be optional.
}
