import 'package:flutter/material.dart';
import './screens/todo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Todo List App',
        theme: ThemeData(
          primaryColor: Colors.red,
          //this is what you want
          accentColor: Colors.white,
          primarySwatch: Colors.red
        ),
        home: TodoListScreen());
  }
}
