import 'package:flutter/material.dart';

final coinTheme = ThemeData(
  listTileTheme: ListTileThemeData(iconColor: Colors.white),
  dividerColor: Colors.white,
  scaffoldBackgroundColor: Color.fromARGB(255, 44, 42, 42),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Color.fromARGB(255, 44, 42, 42),
    titleTextStyle: TextStyle(
        color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),
    centerTitle: true,
    elevation: 0,
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: const TextTheme(
    labelSmall:
        TextStyle(color: Color.fromARGB(255, 223, 193, 25), fontSize: 17),
    bodyMedium: TextStyle(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
  ),
);
