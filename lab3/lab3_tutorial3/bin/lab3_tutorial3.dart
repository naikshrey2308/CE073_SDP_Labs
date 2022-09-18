import 'package:lab3_tutorial3/lab3_tutorial3.dart' as lab3_tutorial3;
import "package:characters/characters.dart";

void main(List<String> arguments) {
  /// CHARACTERS IN DART
  // Dart offers no characters as in other languages. Dart strings are a collection of UTF-16 code units. 
    const greet = "Hello";
    print(greet.codeUnits);

  // Code points are obviously more than 65536. To represent the codes left out, surrogate pairs are used.
    const dart = "🎯";

    // to print surrogate pairs
    print(dart.codeUnits);
    // to print the unicode points (runes)
    print(dart.runes);

    // two runes for I and N each
    const flag = "🇮🇳";
    print(flag.runes);

    // runes for each member of the family
    // these are glued together using a zero-width joiner
    const family = "👨‍👩‍👦";
    print(family.runes);

  // these strings with multiple characters but percieved by the user as a single character are known as user perceived character, or Unicode Extended Grapheme Cluster or more commonly, Grapheme Cluster
    // number of runes in the family
    print(family.length);
    // number of characters perceived by the user
    print(family.characters.length);
}