// declaring a class in dart
class Person {
  // declaring properties
  String name;
  int age;

  // constructor
  Person(this.name, this.age);

  // method to display information
  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

class car{
  // declaring properties
  String brand;
  String model;
  int year;

  // constructor
  car(this.brand, this.model, this.year);

  // method to display information
  void displayInfo() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}


//// A class with default values for properties
class MyDetails {
  String name = 'Unknown';
  int age = 0;

}

class Dog{
  String name;
  int age;

//parameterized constructor
  Dog(this.name, this.age);

  void bark() {
    print('$name says Woof!');
  }
}

void main(){
  // Creating an instance of Person
  Person person1 = Person('Alice', 30);
  person1.displayInfo(); // Output: Name: Alice, Age: 30

  // Creating an instance of car
  car car1 = car('Toyota', 'Corolla', 2020);
  car1.displayInfo(); // Output: Brand: Toyota, Model: Corolla, Year: 2020

  MyDetails myDetails = MyDetails();
  print("Name: ${myDetails.name}, Age: ${myDetails.age}"); // Output: Name: Unknown, Age: 0

  Dog dog1 = Dog('Buddy', 5);
  dog1.bark(); // Output: Buddy says Woof!
  print('Dog Name: ${dog1.name}, Age: ${dog1.age}'); // Output: Dog Name: Buddy, Age: 5
}