import 'package:lab4_tutorial1/lab4_tutorial1.dart' as lab4_tutorial1;
import 'user.dart';

// can be placed anywhere
// order doesn't matter
// can also be placed below main()
class User {
  int id = 0;
  String name = "";

  String toJson() {
    return '{"id": $id, "name": $name}';
  }

  // Words that start with @ are called annotations. These annotations are optional and give you and the compiler additional information about the method.
  // @override here denotes that the method is already defined in some ancestor class and is being overriden by our custom implementation in this class.
  @override
  String toString() {
    return "User(id: $id, name: $name)";
  }
}


class Password {
  String value = "";

  bool isValid() {
    return (value.length > 8) ? true : false;
  }

  @override
  String toString() {
    return value;
  }
}

class Pass2 {
  const Pass2({String val = ""}) : value = val;
  final String value;
}

class UserLF {
  UserLF(int id, String name) {
    this.id = id;
    this.name = name;
  }
  int id = 0;
  String name = "";
}

class UserSF {
  UserSF(this.id, this.name);
  UserSF.unknown() : this(0, "unknown");
  int id = 0;
  String name = "";
}

class args {
  args({this.id = 0, this.name = "unknown"});
  args.unknown() : this();
  int id;
  String name;

  factory args.ray() {
    return args(id: 5, name: "Ray");
  }
}

class Student {
  Student(this.firstName, this.lastName, this.grade);
  final String firstName, lastName;
  int grade;
  @override
  String toString() {
    return '''
      {
        name: {
          firstName: $firstName,
          lastName: $lastName
        },
        grade: $grade
      }
    ''';
  }
}

class Sphere {
  const Sphere({num r = 0}) : radius = r;
  final num radius;
  static const PI = 3.14;
  num get volume => (4/3.0 * PI * radius * radius * radius);
  num get surfaceArea => (4 * PI * radius * radius);
}

void main(List<String> arguments) {
  /// CLASSES IN DART

  // What is a class? Class is a user-defined data type.
  // Another name for an object is an instance. That's why creating an object is also known as instantiating a class.

  // cannot use const as the value will be assigned at runtime
  // User() is the constructor method
  final user = User();
  // new can be neglected from Dart 2.0 onwards
  // final user2 = new User();

  // assigning properties to the instance
  user.id = 2;
  user.name = "Admin";
  // Object class in Dart which is the parent of all the classes.
  // calls the toString() method of the class
  // by default, it is inherited from the Object class
  print(user);

  // What is Serialization?
  // It is the process of converting a complex data object into a string so that is can be passed onto the files, databases or networks.
  // Similarly, deserialization is the process of converting a string back into an object of our data type.

  // Generally the serialization is done using the standardized formats such as JSON (JavaScript Object Notation)
  print(user.toJson());

  // Cascade(..) operator to assign the instance
  final user2 = User()
    ..id = 3
    ..name = "ABC";
  print(user2.toJson());


  /// MINI-EXERCISES
  /// 1, 2, 3 (combined)
  Password invalidPass = Password()
    ..value = "1234";
  print(invalidPass);
  print(invalidPass.isValid());
  Password validPass = Password()
    ..value = "abcde12345";
  print(validPass);
  print(validPass.isValid());


  /// CONSTRUCTORS
  /// The constructors are methods that are used to create instances of a class.
  /// The implicit return type of the constructor method is the same type as the class itself.
  /// Whenever function name is the same as a keyword, the return type is automatically made the same as the function name. For example, operator float() => return type float even though we don't specify it, Address() => return type Address even though we don't specify it.
  /// Also the compiler adds the return statement at the end of that function. That's why it seems like constructors don't have a return value yet they return an object
  /// The first argument in a constructor function is the pointer to the invoking object and is added automatically by the compiler. By the virtue of this argument referring to the current object, we can use the 'this' keyword inside the constructor. 
  
  // Long-Form Constructor
  final userlf = UserLF(1, "Admin");
  print("${userlf.id}, ${userlf.name}");
  // Short-Form Constructor
  var usersf = UserSF(2, "Student");
  print("${usersf.id}, ${usersf.name}");
  // Named Constructor
  usersf = UserSF.unknown();
  print("${usersf.id}, ${usersf.name}");
  // Named-Arguments Constructor
  var argsObj = args(name: "args", id: 2);
  print("${argsObj.id}, ${argsObj.name}");


  /// Private fields in classes
  /// _<field> denotes that the variable is declared as private. But the file in which it is declared can still access the private variable. Hence, if placed in a different file and imported into this file, those fields would act as private fields.
  
  var pUser = UserP();
  // pUser = UserP(id: -1); // if --enable-dart is true, then this gives an error
  // print("${pUser._id}"); // gives error as _id is private


  /// FACTORY CONSTRUCTOR
  /// This provides more flexibility in creating instances of classes.
  /// While normal constructor can just create instances of a class, the factory constructor can return existing instances of the class, or even subclasses of it.
  var facObj = args.ray();
  print("${facObj.id}, ${facObj.name}");

  /// MINI-EXERCISES
  /// 1, 2 (combined)
  const emptyPass = Pass2();
  // no change possible as value is final
  // emptyPass.value = "12";
  const filledPass = Pass2(val: "1234");
  print("emptyPass = '${emptyPass.value}', filledPass = '${filledPass.value}'");
  

  /// OBJECTS
  /// Objects act as references to instances of the classes. Therefore, if we assign an object to another, only the reference is assigned and a new object is not created.
  var user3 = args(id: 10, name: "Admin");
  var user4 = user3;
  user4.name = "Student";
  print("user4.name changed to Student...");
  print("user3.name = ${user3.name}");

  var user5 = UserGetSet(id: 10, name: "Admin");
  user5.name = "Student"; // setter
  print("user5.name = ${user5.name}"); // getter

  var user6 = UserGetSet();
  print("UserGetSet.count = ${UserGetSet.count}");
  // In dart, static variables cannot be accessed through an instance. Hence, the below code is wrong.
  // print("UserGetSet.count = ${user6.count}");


  /// SINGLETON CLASSES
  var single = Singleton.instance; // static variable
  var hidden_single = Singleton(); // factory
  print("single == hidden_single? ${single == hidden_single}"); // returns true as both refer to the same instance


  /// STATIC METHODS vs FACTORY
  /// 1. Static methods can return anything including a Future, while factories can only return instances of their class.
  /// 2. Factories can be unnamed hiding the fact from the user's perspective that it is a factory and not a generative constructor. On the other hand, static methods must be named.


  /// CHALLENGES
  /// 1.
  var bert = Student("Bert", "", 95);
  var ernie = Student("Ernie", "Williams", 85);
  print(bert);
  print(ernie);
  /// 2.
  var sphere = Sphere(r: 12);
  print("Volume = ${sphere.volume}, Surface area = ${sphere.surfaceArea}");
}
