import 'package:flutter/material.dart';

class Ts552 extends StatefulWidget {
  const Ts552({super.key});

  @override
  State<Ts552> createState() => _Ts552State();
}

class _Ts552State extends State<Ts552> {
  String text = "Go";
  Future<String> trippleString(String text) async {
    await Future.delayed(const Duration(seconds: 2));
    return text * 3;
  }

  void updateText() async {
    String newText = await trippleString("Go");
    setState(() {
      text = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 350,
              ),
              Text(text),
              ElevatedButton(
                  onPressed: updateText, child: const Text("Tripple It!"))
            ],
          ),
        ),
      ),
    );
  }
}
