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

void main(){
  // Creating an instance of Person
  Person person1 = Person('Alice', 30);
  person1.displayInfo(); // Output: Name: Alice, Age: 30

  // Creating an instance of car
  car car1 = car('Toyota', 'Corolla', 2020);
  car1.displayInfo(); // Output: Brand: Toyota, Model: Corolla, Year: 2020
}