import 'dart:io';

void main() async {
  print('Dart Week 4 Assignment\n');
  
  // String Manipulation
  print('1. String Manipulation:');
  String name = 'john';
  String surname = 'smith';
  
  // Concatenation
  String fullName = name + ' ' + surname;
  print('Concatenation: $fullName');
  
  // Interpolation
  String greeting = 'Hello $name, welcome!';
  print('Interpolation: $greeting');
  
  // Substring
  String part = fullName.substring(0, 4);
  print('Substring: $part');
  
  // Case conversion
  print('Uppercase: ${fullName.toUpperCase()}');
  print('Lowercase: ${fullName.toLowerCase()}');
  
  // Reverse string
  String reversed = fullName.split('').reversed.join('');
  print('Reversed: $reversed');
  
  // Length
  print('Length: ${fullName.length}');
  
  // Collections
  print('\n2. Collections:');
  
  // List
  List<String> students = ['Alice', 'Bob', 'Charlie'];
  students.add('Diana');
  students.remove('Bob');
  print('Students list: $students');
  
  for (String student in students) {
    print('Student: $student');
  }
  
  // Set
  Set<int> numbers = {1, 2, 3, 4, 5};
  numbers.add(6);
  numbers.add(3); // won't add duplicate
  print('Numbers set: $numbers');
  
  // Map
  Map<String, int> ages = {'Alice': 20, 'Bob': 22, 'Charlie': 19};
  ages['Diana'] = 21;
  ages.remove('Bob');
  print('Ages map: $ages');
  
  ages.forEach((name, age) {
    print('$name is $age years old');
  });
  
  // File Handling
  print('\n3. File Handling:');
  
  try {
    // Write to file
    File outputFile = File('output.txt');
    await outputFile.writeAsString('Hello from Dart!\nThis is week 4 assignment.');
    print('Data written to output.txt');
    
    // Read from file
    String content = await outputFile.readAsString();
    print('File content: $content');
    
  } catch (e) {
    print('Error with file: $e');
  }
  
  // Date and Time
  print('\n4. Date and Time:');
  
  DateTime now = DateTime.now();
  print('Current date: $now');
  
  // Format date
  String formatted = '${now.day}/${now.month}/${now.year}';
  print('Formatted date: $formatted');
  
  // Add days
  DateTime futureDate = now.add(Duration(days: 7));
  print('Date after 7 days: $futureDate');
  
  // Subtract days
  DateTime pastDate = now.subtract(Duration(days: 3));
  print('Date 3 days ago: $pastDate');
  
  // Calculate difference
  DateTime birthday = DateTime(2000, 5, 15);
  Duration difference = now.difference(birthday);
  print('Days since birthday: ${difference.inDays}');
  
  // Combined Application
  print('\n5. Combined Application:');
  
  // Get user input (simulated)
  String userInput = 'learning dart programming';
  
  // String manipulation
  String processed = userInput.toUpperCase();
  String reversed2 = processed.split('').reversed.join('');
  
  // Store in collection
  List<String> entries = [];
  entries.add('Original: $userInput');
  entries.add('Processed: $processed');
  entries.add('Reversed: $reversed2');
  
  // Add timestamp
  String timestamp = DateTime.now().toString();
  entries.add('Time: $timestamp');
  
  print('Entries created:');
  for (String entry in entries) {
    print(entry);
  }
  
  // Save to file
  try {
    File logFile = File('log.txt');
    String logData = entries.join('\n');
    await logFile.writeAsString(logData);
    print('Data saved to log.txt');
  } catch (e) {
    print('Error saving to file: $e');
  }
}