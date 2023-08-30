// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:to_do_app/const/colors.dart';

class LogIn_Screen extends StatefulWidget {
  final VoidCallback show;
  LogIn_Screen(this.show, {super.key});

  @override
  State<LogIn_Screen> createState() => _LogIn_ScreenState();
}

class _LogIn_ScreenState extends State<LogIn_Screen> {
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode1.addListener(() {
      setState(() {});
    });
    super.initState();
    _focusNode2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgraundColors,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            image(),
            const SizedBox(height: 50),
            textfield(email, _focusNode1, 'Email', Icons.email),
            const SizedBox(height: 10),
            textfield(password, _focusNode2, 'Password', Icons.password),
            const SizedBox(height: 8),
            account(),
            const SizedBox(height: 20),
            login_bottom()
          ],
        ),
      )),
    );
  }

  Widget account() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Don't have an account?",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: widget.show,
            child: const Text(
              'Sign up',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget login_bottom() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: custom_green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          'LogIn',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget textfield(TextEditingController controller, FocusNode focusNode,
      String typeName, IconData iconss) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          style: const TextStyle(fontSize: 18, color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Icon(
              iconss,
              color:
                  focusNode.hasFocus ? custom_green : const Color(0xffc5c5c5),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            hintText: typeName,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Color(0xffc5c5c5), width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: custom_green, width: 2.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget image() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/7.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
