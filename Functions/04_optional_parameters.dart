// Created by CHEGEBB
// Function with optional positional parameters

void greet([String? name]) {
  if (name == null) {
    print('Hello, Guest!');
  } else {
    print('Hello, $name!');
  }
}

void main() {
  greet();         // Hello, Guest!
  greet('Brian');  // Hello, Brian!
}
