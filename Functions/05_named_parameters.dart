// Created by CHEGEBB
// Function with named parameters

void greet({String name = 'Guest', int age = 0}) {
  print('Hello, $name! You are $age years old.');
}

void main() {
  greet(name: 'Brian', age: 26);
  greet();  // Uses default values
}
