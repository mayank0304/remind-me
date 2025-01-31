import 'package:flutter/material.dart';
import 'package:reminder_app/screens/reminder.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
      "/": (context) => const Reminder()
     },
    );
  }
}
