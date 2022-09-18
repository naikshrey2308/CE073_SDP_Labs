import 'dart:svg';
import 'package:lab5_tutorial1/lab5_tutorial1.dart' as lab5_tutorial1;

Set<String> uniques(String para) {
  var tmp = para.replaceAll('.', ' ');
  tmp = tmp.replaceAll(',', ' ');
  var words = tmp.split(" ").toList();
  words.sort((l1, list2) => l1.length.compareTo(list2.length));
  print(words);
  var sets = words.toSet();
  print(sets);
  return sets;
}

Map<String, int> wordCount(String para) {
  var tmp = para.replaceAll('.', ' ');
  tmp = tmp.replaceAll(',', ' ');
  var words = tmp.split(" ").toList();
  words.sort((l1, list2) => l1.length.compareTo(list2.length));
  var map = <String, int>{};
  for (var ele in words) {
    map[ele] = (map[ele] ?? 0) + 1;
  }
  return map;
}

class User {
  User(this.id, this.name);
  int id;
  String name;
}

void main(List<String> arguments) {

  /// COLLECTIONS
  /// There are mainly 3 types of collections:
  /// 1. List - A list stores similar type of items in fixed order.

  /// List Literals
  var list = ['1', '2']; 
  // Here list is the list and is of type string
  
  // Below 3 ways to create an empty string
  var list1 = []; 
  // list1 is the string of dynamic data type, as there is no element from which type can be inferred, so the type assigned is dynamic

  List<int> list2 = [];
  var list3 = <String>[];
  
  print(list);
  print(list[1]);
  print(list.indexOf('1'));
  
  list[1] = 'abc';
  print(list);

  // adds an element to the list
  list2.add(21);
  list2.add(23);
  list2.add(10);
  print(list2);
  
  // removes an element with a given value
  list2.remove(21);
  // removes an element at a specific index
  list2.removeAt(1);
  print(list2);


  /// MUTABLE AND IMMUTABLE LIST
  /// Lists formed with the 'var' keyword are mutable.
  /// Lists formed with 'final' are immutable. This means we can still alter the elements of the list but cannot assign the variable a whole new instance of a list.

  final List<String> list4 = ['abc', 'rst', 'def'];
  list4[0] = 'ghi';
  list4.add('123');
  list4.remove('pqr');
  print(list4);

  // Deeply Immutable
  const desserts = [
    'Thick Shake',
    'Ice Cream',
  ]; 
  // This is same as: final desserts = const ['Thick Shake', 'Ice Cream'];

  // Below 3 will not work because list is const & hence deeply immutable
  // desserts5.add('Rice');
  // desserts5.remove('Ice Cream');
  // desserts5[0] = 'Brownie';

  final modifiableList = [DateTime.now(), DateTime.now()];
  final unModifiableList = List.unmodifiable(modifiableList);


  // List properties
  const drinks = ['water', 'milk', 'juice', 'soda'];
  // Accessing first and last element
  print(drinks.first);
  print(drinks.last);
  print(drinks.isEmpty);
  print(drinks.isNotEmpty);
  // By using this also we can check if list is empty or not
  print(drinks.length);

  // Looping over the list
  for (var i in drinks) {
    print(i);
  }
  drinks.forEach((element) => print(element));
  // Tear-off property
  drinks.forEach(print);
  // And since the input of print is the same as the output of the forEach function, Dart allows you to rephrase that.
  

  /// Flutter UI code is composed of classes called widgets.
  /// Three common Flutter widgets are rows, columns and stacks, which all store their children as List collections.

  // Spread operator
  // You can use the spread operator (...) to expand those words into another list.
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  const desserts2 = ['donuts', ...pastries, ...candy];
  print(desserts2);

  // null spread operator (...?)-->Avoid an error of adding null list
  List<String>? coffees;
  final hotDrinks = ['Milk', 'Tea', 'BournVita', ...?coffees];
  print(hotDrinks);

  // we can use conditionals inside the list too
  const peanutAllergy = true;
  const candy2 = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy2);

  // collection for
  const deserts = ['thar', 'arizonian', 'gobi', 'sahara', 'arctic'];
  var deserts2 = [
    'arabian',
    for (var desert in deserts) {
      desert.toUpperCase(), 
    }
  ];
  print(deserts2);


  // 2. Sets
  final Set<int> set = {};
  // similar to: final set = <int>{};
  final set2 = {1, 2, 3, 1};
  print(set2); // { 1, 2, 3 }
  // As set don't contain duplicates it avoid 2nd 1
  print(set2.contains(1));
  set2.remove(1);
  set2.addAll([2, 3, 24, 26]);
  print(set2);

  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  // Intersection of two sets
  final intersection = setA.intersection(setB);
  print(intersection);
  // Union of two sets
  final union = setA.union(setB);
  print(union);


  // 3. Map
  final Map<String, int> map = {};
  // same as: final emptyMap = <String, int>{};
  final map2 = {}; 
  // This is a map of type <dynamic,dynamic> not set <dynamic>
  final bakery = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(bakery);
  // Key in map must be unique
  var cakes = bakery['cakes'];
  print(cakes); 
  // Instead of index we use key in map
  print(cakes?.isEven);

  bakery['brownies'] = 3;

  bakery['cakes'] = 1;

  bakery.remove('cookies');
  print(bakery);


  // Map properties:
  print(bakery.isEmpty);
  print(bakery.length);
  print(bakery.keys);
  print(bakery.values);

  // Checking for key or value existence
  print(bakery.containsKey('pies'));
  print(bakery.containsValue(42));

  for (var item in bakery.keys) {
    print(bakery[item]);
  }

  bakery.forEach((key, value) => print("$key: $value"));

  for (var itr in bakery.entries) {
    print("${itr.key}: ${itr.value}");
  }


  // Map and Where
  // Mapping over a collection:
  var nums = [1, 2, 3, 4];
  final sqs = nums.map((ele) => ele * ele);
  print(sqs);

  // Filtering a collection (using where method which must return boolean value)
  final evens = sqs.where((sq) => sq.isEven);
  print(evens);

  final res = nums.reduce((sum, ele) => sum + ele);
  print(res);

  // Same as reduce but take an initital value so if list is empty then we don't get any error
  final ans = nums.fold(0, (int sum, ele) => sum + ele);
  print(ans);

  // Sort a list
  final desserts5 = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts5.sort(); 
  // This is in-place sorting so desserts5 will be sorted

  // Reverse a list
  final desserts1 = ['cookies', 'pie', 'donuts', 'brownies'];
  final dessertsReversed = desserts1.reversed;
  print(desserts1);
  print(dessertsReversed);

  // Custom sorting
  print(desserts5);
  desserts5.sort((d1, d2) => d1.length.compareTo(d2.length));
  print(desserts5);

  // Combining higher order method
  final bigDesserts = desserts5
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigDesserts);
}