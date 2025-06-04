// 🌟 Created by CHEGEBB
// 📘 Learning Anonymous Functions in Dart

void main() {

    var items = ['Laptop', 'Tablet', 'Smartphone', 'Smartwatch'];

  // Using an anonymous function with forEach to print each item
  items.forEach((item) {
    print(item);
  });
  
  // ✅ 1. Basic Anonymous Function
  // A function without a name, used inline
  var greet = () {
    print('Hello from an anonymous function!');
  };
  greet(); // Output: Hello from an anonymous function!

  // ✅ 2. Anonymous Function with Parameters
  var multiply = (int a, int b) {
    return a * b;
  };
  print('Multiplication: ${multiply(3, 4)}'); // Output: 12

  // ✅ 3. Using Anonymous Function with List forEach
  List<String> languages = ['Dart', 'Flutter', 'Kotlin'];
  languages.forEach((lang) {
    print('I ❤️ $lang');
  });

  // ✅ 4. Passing Anonymous Function Directly
  execute((name) {
    print('Welcome, $name!');
  });

  // ✅ 5. Returning Anonymous Function from another function
  Function makeAdder(int x) {
    return (int y) => x + y; // anonymous function returned
  }

  var add5 = makeAdder(5);
  print('5 + 10 = ${add5(10)}'); // Output: 15
}

// A function that takes another function as an argument
void execute(Function fn) {
  fn('CHEGEBB');
}

