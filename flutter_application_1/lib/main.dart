import 'package:flutter/material.dart';

import 'package:flutter_application_1/home.dart';

void main() {
  runApp(const MyApp());
}

ColorScheme defaultColorScheme = const ColorScheme(
  primary: Color.fromARGB(255, 182, 170, 164),
  secondary: Color.fromARGB(255, 3, 75, 218),
  surface: Color.fromARGB(255, 70, 97, 219),
  background: Color.fromARGB(255, 70, 97, 219),
  error: Color.fromARGB(255, 198, 31, 31),
  onPrimary: Color.fromARGB(255, 70, 97, 219),
  onSecondary: Color.fromARGB(255, 70, 97, 219),
  onSurface: Color(0xffffffff),
  onBackground: Color(0xffffffff),
  onError: Color.fromARGB(255, 255, 255, 255),
  brightness: Brightness.dark,
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: defaultColorScheme,
          primarySwatch: Colors.grey,
        ),
        home: HomePage());
  }
}
