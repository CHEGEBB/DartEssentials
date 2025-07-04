class Singleton { // Declares a new class named 'Singleton'.
  static final Singleton _instance = Singleton._internal(); // Declares a single, unchanging (final) instance of Singleton, created once when the class is first used. '_instance' is private to the class.

  factory Singleton() { // Defines a 'factory' constructor for Singleton. This constructor doesn't always create a new object.
    return _instance; // It always returns the same single instance that was already created ('_instance').
  }

  Singleton._internal(); // Defines a private named constructor. Because it's private ('_internal'), you can't call it directly from outside the class, ensuring only the factory can create the instance.
} // Closes the Singleton class definition.

void main() { // Defines the 'main' function, the entry point of the Dart program.
  var s1 = Singleton(); // Creates (or rather, gets) the first instance of Singleton via the factory constructor.
  var s2 = Singleton(); // Creates (or rather, gets) the second instance of Singleton via the factory constructor.

  print(identical(s1, s2)); // Prints 'true' to the console because 'identical()' checks if two variables refer to the exact same object in memory, which they do in this singleton pattern.
} // Closes the main function definition.