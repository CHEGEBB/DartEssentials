// Simulating a network request or a long-running operation
Future<String> fetchUserData() async {
  // Simulate a delay
  await Future.delayed(Duration(seconds: 2));
  // Return user data after the delay
  return 'User data retrieved successfully';
}

// Main function marked as async to use await inside it
Future<void> main() async {
  print('Fetching user data...');
  
  // Call fetchUserData() and wait for its completion
  String result = await fetchUserData();
  
  // Print the result once fetchUserData() completes
  print(result);
}

// Explanation:

// main() is marked with async keyword, indicating that it contains asynchronous operations.
// Inside main(), we call fetchUserData(), which returns a Future<String>. We use await to asynchronously wait for this future to complete.
// While waiting for fetchUserData() to complete, the execution of main() is paused. This allows other code to run in the meantime.
// Once fetchUserData() completes, its result is assigned to result, and the execution of main() resumes.
// We print the result obtained from fetchUserData().