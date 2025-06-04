// Created by CHEGEBB
// For-in loop to iterate over items in a list

void main() {
  List<String> fruits = ['Apple', 'Banana', 'Mango'];

  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }

  List <int> numbers = [1, 2, 3, 4, 5];
  for(int number in numbers) {
    print('Number: $number');
  }
}
