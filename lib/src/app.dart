import 'package:flutter/material.dart';
import 'package:ts_552/src/features/ts_552/ts_552.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Ts552(),
    );
  }
}
