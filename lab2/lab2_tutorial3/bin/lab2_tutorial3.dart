void main(List<String> arguments) {
  // DATA TYPES AND OPERATORS

  /// Annotating Variables Explicitly
    int myInteger = 56;
    double myDouble = 108.88;
    print("$myInteger $myDouble");

  /// Constant variables annotation
    const int myIntegerConst = 56;
    final double myDoubleFinal = 15.89;
    print("$myIntegerConst $myDoubleFinal");
  
  /// How to check the data type in dart?
    num myNumber = 5.68;
    print(myNumber is double);
    print(myNumber is int);
    // "Unnecessary type check, the result is always true."
    // because int and double both are num types too!
    // print(myNumber is num);

  // How to check type at runtime?
    print("runtime type of 5.68 -> ${myNumber.runtimeType}");

  // In dart, there are no implicit conversions. If you want to change a type, specify so!
    int a = 0;
    double b = 5.2;
    // won't work
    // a = b;
    a = b.toInt();
    print(a);

    // but, toInt() is a runtime method. So in case of constant variables, the varible assigned toInt() should be declared as final and not const.
    const int aConst = 1;
    const double bConst = 6.2;
    // won't work
    // const res = (aConst * bConst).toInt();
    final res = (aConst * bConst).toInt();
    print(res);

  // What if I want to declare 3 as double?
    // 1. specify type
    const double num1 = 3;
    // 2. convert type
    final num2 = 3.toDouble();
    // 3. specify value (as int cannot have . decimal)
    const num3 = 3.0;
    print("$num1 $num2 $num3"); 

  // The "as" keyword
  // as keyword is used to cast down to sub-types
  // const double db1 = 8.2;
  // final integer1 = db1 as int;
  const num db1 = 8; // you need to be sure that db1 is int for "as" to work
  final integer1 = db1 as int;
  print(integer1);
  
  // MINI-EXERCISES
  // Ans 1. Yes
    const age1 = 42;
    const age2 = 21;

  // Ans 2. It is double because / operator is used. It converts the answer if necessary to double. If we use ~/ instead, then averageAge would be int.
    const averageAge = (age1 + age2)/2;
    print(averageAge);



  // STRINGS IN DART
  
  // Strings are immuatble in dart.
    var greeting = "Hello, Dart!";
    greeting = "Hi, I'm learning Dart.";
    print(greeting);

  // Dart does not offer the char data type as in other langauages.
  // We can use either single or double quotes for string literals
    const letter = "a"; // a string, and not a char
    print(letter);

  // We can Concatenate the strings just by using the (+) operator
    var message = "Hello" + " I am ";
    const name = "XYZ";
    message += name;
    print(message);

  // We can use the string buffer in case of a lot of concatenation. It is much more efficient as it creates a mutable location in the memory to add to the strings and then finally the toString() method converts it into the original immutable string.
    final greet = StringBuffer();
    greet.write("Hello");
    greet.write(" I am ");
    greet.write("XYZ");
    greet.toString();
    print(greet);

  // String interpolation offers a more organized way of dealing with strings.
    final name2 = "ABC";
    final sentence = "My name is $name2";
    print(sentence);

  // If the string is too large, we can use the multi-line strings.
    final mutliGreet = '''
      Hello there guys!
      I'm learning Dart.
      It's great to learn new technologies!
    ''';
    print(mutliGreet);

    final singleGreet = 
      'This is only'
      ' a single '
      'line';
    print(singleGreet);

    // Raw strings ignore the escape characters.
    // prepend r to create a raw string.
    const normal = "I study in \nDDU";
    const raw = r"I study in \nDDU";
    print(normal);
    print(raw);


  /// MINI-EXERCISES
    const firstName = "ABC";
    const lastName = "XYZ";
    final fullname = StringBuffer();
    fullname.write(firstName);
    fullname.write(" ");
    fullname.write(lastName);
    fullname.toString(); 
    print(fullname);

    final myDetails = "Hello, I am $fullname";
    print(myDetails);


    // OBJECTS AND DYNAMIC TYPES
    dynamic x = 5;
    x = 'a';
    var y; // defaults to dynamic
    y = 8;
    y = 9.3;
    print("$x $y");

    Object? myVar = 42;
    myVar = "This is the nullable-object type";
    print(myVar);

    // Object? and dynamic perform the same, but there is a semantic difference between the both. Object? means we're informing that the user should be careful about the type and dynamic means that user can do anything but they are responsible if the app crashes.

    // CHALLENGES
    // 1.
    final int grade = ((0.2*90) + (0.3*80) + (0.5*94)).toInt();
    print(grade);

    // 2.
    /* 
      const name = "Ray";
      name += "Wenderlich";

      name is declared constant and hence it's value cannot be changed later on.
    */

    // 3. double type
    const value = 10/2;
    print(value);

    // 4. 10 * 5 = 50
    const number = 10;
    const multiplier = 5;
    final summary = "$number * $multiplier = ${number * multiplier}";
    print(summary);
}