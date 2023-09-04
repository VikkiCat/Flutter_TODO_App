import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:to_do_app/auth/auth_page.dart';
import 'package:to_do_app/widgets/task_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Task_Widget(),
    );
  }
}
