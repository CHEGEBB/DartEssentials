// JavaScript
// let myNull = null;
// if (!myNull) {
//   console.log('null is treated as false');
// }
// let zero = 0;
// if (!zero) {
//   console.log('0 is treated as false');
// }

/// Dart
var myNull;
var zero = 0;
if (zero == 0) {
  print('use "== 0" to check zero');
}

//Dart and JavaScript functions are generally similar. The primary difference is the declaration.

// JavaScript
// function fn() {
//   return true;
// }

/// Dart
/// You can explicitly define the return type.
bool fn() {
  return true;
}


// Asynchronous programming
// Futures
// Like JavaScript, Dart supports single-threaded execution. In JavaScript, the Promise object represents the eventual completion (or failure) of an asynchronous operation and its resulting value.

// Dart uses Future objects to handle this.
// JavaScript
// class Example {
//   _getIPAddress() {
//     const url = 'https://httpbin.org/ip';
//     return fetch(url)
//       .then(response => response.json())
//       .then(responseJson => {
//         const ip = responseJson.origin;
//         return ip;
//       });
//   }
// }

// function main() {
//   const example = new Example();
//   example
//     ._getIPAddress()
//     .then(ip => console.log(ip))
//     .catch(error => console.error(error));
// }

// main();


// Dart
import 'dart:convert';

import 'package:http/http.dart' as http;

class Example {
  Future<String> _getIPAddress() {
    final url = Uri.https('httpbin.org', '/ip');
    return http.get(url).then((response) {
      final ip = jsonDecode(response.body)['origin'] as String;
      return ip;
    });
  }
}

void main() {
  final example = Example();
  example
      ._getIPAddress()
      .then((ip) => print(ip))
      .catchError((error) => print(error));
}

// async and await
// The async function declaration defines an asynchronous function.

// In JavaScript, the async function returns a Promise. The await operator is used to wait for a Promise.
// JavaScript
// class Example {
//   async function _getIPAddress() {
//     const url = 'https://httpbin.org/ip';
//     const response = await fetch(url);
//     const json = await response.json();
//     const data = json.origin;
//     return data;
//   }
// }

// async function main() {
//   const example = new Example();
//   try {
//     const ip = await example._getIPAddress();
//     console.log(ip);
//   } catch (error) {
//     console.error(error);
//   }
// }

// main();


// Dart
import 'dart:convert';

import 'package:http/http.dart' as http;

class Example {
  Future<String> _getIPAddress() async {
    final url = Uri.https('httpbin.org', '/ip');
    final response = await http.get(url);
    final ip = jsonDecode(response.body)['origin'] as String;
    return ip;
  }
}

/// An async function returns a `Future`.
/// It can also return `void`, unless you use
/// the `avoid_void_async` lint. In that case,
/// return `Future<void>`.
void main() async {
  final example = Example();
  try {
    final ip = await example._getIPAddress();
    print(ip);
  } catch (error) {
    print(error);
  }
}