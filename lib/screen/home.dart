import 'package:flutter/material.dart';
import 'package:to_do_app/const/colors.dart';
import 'package:to_do_app/widgets/task_widget.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgraundColors,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: custom_green,
        child: const Icon(Icons.add, size: 30),
      ),
      body: SafeArea(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return const Task_Widget();
        },
        itemCount: 10,
      )),
    );
  }
}
