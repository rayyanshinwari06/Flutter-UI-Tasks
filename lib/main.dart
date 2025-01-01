import 'package:flutter/material.dart';
import 'package:ui_tasks/foodappui/foodapp_listview,builder.dart';
import 'package:ui_tasks/insta.dart';

void main() {
  runApp(const UiTasks());
}

class UiTasks extends StatelessWidget {
  const UiTasks({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Foodappui(),
      Instagram(),
    );
  }
}
// git init
// git add .
// git commit -m  "message"
// path
// git push origin main