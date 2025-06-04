// Created by CHEGEBB
// Filtering items that contain "turn" and printing them

void main() {
  List<String> flybyObjects = [
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
    'Pluto'
  ];

  // Filter names that contain 'turn' and print them
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}
