/// INITIALIZER-LIST
/// The constructor here, uses the concept of initializer lists. The content of the list (comma-seperated content) after the colon is a part of the initializer list. This list is executed before the execution of the constructor body.

/// ASSERT 
/// The assert statement stops the execution of the program if the specified boolean condition turns out to be false. It only does so in the development phase. Once a release build is generated, the compiler completely ignores the assert statements.

/// CONSTANT CONSTRUCTORS
/// We can also create constant constructors by prepending the constructor definition by the 'const' keyword.
/// Advantages?
/// (1) We can create const instances at compile-time.
/// (2) If more than one constant instance is made for the same class with the same properties by a constant constructor, those so-called 'canonical instances' share the same memory space. Therefore, 1000 same constant instances would occupy the memory of only 1 instance. This improves the overall performance of the application.

class UserP {
  /* const */UserP({int id = 0, String name = "unknown"}) : assert(id >= 0), _id = id, _name = name;
  int _id;
  String _name;
}

class UserGetSet {
  UserGetSet({int id = 0, String name = "unknown"})
   : _id = id, _name = name {
    count ++;
  }

  int _id;
  String _name;

  static int count = 0;

  int get id => _id;
  set id(int arg) => _id = arg;

  String get name => _name;
  set name(String arg) => _name = arg;
}


/// SINGLETON CLASSES
/// These are the classes of which only one instance can be created.

class Singleton {
  // private constructor so it becomes impossible to create a new instance out of it
  Singleton._();

  // provides a reference to the object created
  static final Singleton instance = Singleton._();

  // We can hide the fact that the class is singleton by creating a factory and returning the singleton instance.
  factory Singleton() => instance;
}
