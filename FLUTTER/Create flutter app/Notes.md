

# 🚀 Flutter Basics for React Native Developers

## ✅ **How do I create a Flutter app?**

In **React Native**, you'd use:

```bash
npx create-react-native-app <projectname>
```

---

In **Flutter**, you can:

* Use an IDE (like VS Code or Android Studio) with Flutter and Dart plugins installed
* Or run the `flutter create` command from the terminal:

```bash
flutter create <projectname>
```

> Ensure the Flutter SDK is added to your system `PATH`.

For a step-by-step guide, check the [Flutter Getting Started Documentation](https://flutter.dev/docs/get-started/install).

Creating a Flutter project generates all necessary files to run a sample app on both **Android** and **iOS**.

---

## ✅ **How do I run my app?**

In **React Native**, from the project root:

```bash
npm run
# or
yarn run
```

---

In **Flutter**, you have two main options:

* Use the **Run** button in your IDE with Flutter and Dart plugins
* Run directly from terminal:

```bash
flutter run
```

This launches your app on:

✔ A connected physical device
✔ An Android emulator
✔ The iOS simulator

For more details, visit the [Flutter Getting Started Docs](https://flutter.dev/docs/get-started/install).

---

## ✅ **How do I import widgets?**

In **React Native**, you import each component explicitly:

```js
import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
```

---

In **Flutter**, to use different widget libraries:

```dart
import 'package:flutter/material.dart';     // Material Design widgets
import 'package:flutter/cupertino.dart';    // iOS-style widgets
import 'package:flutter/widgets.dart';      // Basic widgets
import 'package:my_widgets/my_widgets.dart'; // Your own custom widgets
```

✅ Dart only compiles the widgets your app uses, even if you import entire libraries.

Explore available widgets via the [Flutter Widget Catalog](https://flutter.dev/docs/development/ui/widgets).

