void main() {
  // Variables of different data types
  int age = 25;
  double price = 19.99;
  String name = "Alice";
  bool isActive = true;
  List<int> scores = [85, 92, 78, 96, 89];
  
  print('Age: $age');
  print('Price: \$${price}');//why two dollar signs?
  // The first $ is for string interpolation, the second is to escape the dollar sign
  print('Name: $name');
  print('Active: $isActive');
  print('Scores: $scores');
  
  // Testing type conversion functions
  print('\nType conversions:');
  String num1 = "42";
  String num2 = "3.14";
  
  print('String "$num1" to int: ${stringToInt(num1)}');
  print('String "$num2" to double: ${stringToDouble(num2)}');
  
  int value = 100;
  print('Int $value to string: "${intToString(value)}"');
  print('Int $value to double: ${intToDouble(value)}');
  
  // Using the convert and display function
  print('\nTesting convertAndDisplay function:');
  convertAndDisplay("156");
  
  // Checking number signs
  print('\nNumber sign checks:');
  checkNumber(15);
  checkNumber(-7);
  checkNumber(0);
  
  // Voting eligibility
  print('\nVoting eligibility:');
  checkVotingAge(16);
  checkVotingAge(18);
  checkVotingAge(25);
  
  // Days of the week
  print('\nDays of the week:');
  for (int i = 1; i <= 7; i++) {
    getDayName(i);
  }
  
  // Loop examples
  print('\nFor loop (1 to 10):');
  for (int i = 1; i <= 10; i++) {
    print('$i');
  }
  
  print('\nWhile loop (10 to 1):');
  int count = 10;
  while (count >= 1) {
    print('$count');
    count--;
  }
  
  print('\nDo-while loop (1 to 5):');
  int num = 1;
  do {
    print('$num');
    num++;
  } while (num <= 5);
  
  // Complex example with list processing
  print('\nProcessing number list:');
  List<int> numbers = [5, 18, 156, 7, 89, 2, 134];
  
  for (int number in numbers) {
    print('Number: $number');
    
    if (number % 2 == 0) {
      print('  Even number');
    } else {
      print('  Odd number');
    }
    
    categorizeNumber(number);
    print('');
  }
}

int stringToInt(String str) {
  return int.parse(str);
}

double stringToDouble(String str) {
  return double.parse(str);
}

String intToString(int num) {
  return num.toString();
}

double intToDouble(int num) {
  return num.toDouble();
}

void convertAndDisplay(String numberStr) {
  int asInt = int.parse(numberStr);
  double asDouble = double.parse(numberStr);
  print('Converting "$numberStr": int = $asInt, double = $asDouble');
}

void checkNumber(int num) {
  if (num > 0) {
    print('$num is positive');
  } else if (num < 0) {
    print('$num is negative');
  } else {
    print('$num is zero');
  }
}

void checkVotingAge(int age) {
  if (age >= 18) {
    print('Age $age: Can vote');
  } else {
    print('Age $age: Cannot vote');
  }
}

void getDayName(int day) {
  switch (day) {
    case 1:
      print('Day $day: Monday');
      break;
    case 2:
      print('Day $day: Tuesday');
      break;
    case 3:
      print('Day $day: Wednesday');
      break;
    case 4:
      print('Day $day: Thursday');
      break;
    case 5:
      print('Day $day: Friday');
      break;
    case 6:
      print('Day $day: Saturday');
      break;
    case 7:
      print('Day $day: Sunday');
      break;
    default:
      print('Invalid day number');
  }
}

void categorizeNumber(int num) {
  switch (num) {
    case >= 1 && <= 10:
      print('  Small number (1-10)');
      break;
    case >= 11 && <= 100:
      print('  Medium number (11-100)');
      break;
    case >= 101:
      print('  Large number (101+)');
      break;
    default:
      print('  Number out of range');
  }
}