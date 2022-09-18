import 'package:lab4_tutorial2/lab4_tutorial2.dart' as lab4_tutorial2;
import 'dart:math';

bool isPositive(int? anInteger) {
  if (anInteger == null) {
    return false;
  }
  return !anInteger.isNegative;
}


class User {
  String? name;
  int? id;
}


// class User {
//   User(this.name);
//   final String name;

//   /// throws error if late keyword is missed
//   /// 'late' means that the variable is lazily initialized. That is, it is initialized when it is accessed for the first time.
//   late final int _secretNumber = _calculateSecret();
//   int _calculateSecret() {
//     return name.length + 203;
//   }

//   /*
//     User(this.name) {
//     _secretNumber = _calculateSecret();
//     }
//     late final int _secretNumber;
//   */
// }

// class User1 {
//   /// Here we have to initialize name
//   /// Using initializing formals
//   User1(this.name);
//   /* //(Using an initializer list)
//     User(String name)
//     : _name = name; 
//     String _name;
//   */
//   /* //(Using default parameter values)
//     User([this.name = 'anonymous']);
//     String name;
//     //or
//     User({this.name = 'anonymous'}); 
//     String name;
//   */
//   /* //(required name parameters)
//     User({required this.name}); 
//     String name;
//   */
//   String name;
// }

// class Name {
//   Name({givenName = '', surname = '', surnameIsFirst = false});
//   String givenName, surname;
//   bool surnameIsFirst;
// }

int? fun() {
  var random = new Random();
  int? num = random.nextInt(1);
  if (num == 0) {
    num = null;
  }
  return num;
}

void main(List<String> arguments) {
  
  /// NULLABILITY IN DART

  print(isPositive(3)); // true
  print(isPositive(-1)); // false
  // print(isPositive(Null)); // This will give error as null is not an integer
  


  /// NULLABLE AND NON-NULLABLE
  /// 
  /// The types that end with a ? are nullable type. 
  /// For example int n; is invalid but int? n; is valid as ? allows nullable types
  /// The types which cannot take a null value are called non-nullable types.
  /// Dart types are non nullable, which means we can't assign null value to it that's why we get an error in above function call

  /// Nullable types:
  int? integer1;
  print(integer1); // null


  // MINI-EXERCISES:
  // 1. 
  String? profession;
  print(profession);
  profession = "Footballer";
  const fav_lang = 'Dart'; // fav_lang is auto-inferred as a String


  String? name;
  // print(name.length); 
  // Gives error as we are trying to access properties of null
  name = "xyz";
  print(name.length);


  /// NULL AWARE OPERATORS
  
  /// 1. if null operator => ??
  String? message;
  final msg = message ?? 'No message'; 
  // if the 'message' is null, then the string following the ?? is assigned to 'msg'
  print(msg);

  /// 2. Null-aware assignment operator => ??=
  int? nullAwareInt;
  nullAwareInt ??= 10;
  // x ??= 10 is a shorter form of x = x ?? 10

  /// 3. Null aware access operator or null aware method operator = ?.
  print(nullAwareInt?.isNegative);

  /// 4. Null assertion operator or bang operator => !
  int bangNum = 13!; 
  // assures that the value assigned is not null and if it is then the program is crashed at runtime.

  /// 5. Null aware cascade operator => ?..
  User user = User()
    ..id = 203
    ..name = 'shrey';
  // If object is nullable then
  User? user1 = User()
    ?..id = 203
    ..name = 'naik';

  /// This depicts the chaining of operators
  String? len = user?.name?.length.toString();


  /// 6. Null aware index operator => ?[]
  List<int>? nos = [1, 2, 3];
  nos = null;
  int? itr = nos?[2];
  print(itr);

}
