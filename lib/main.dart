import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';

import 'home/home_screen.dart';

void main() async {
  await Mirai.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MiraiApp(
      title: 'Mirai Demo',
      homeBuilder: (context) => HomeScreen(),
    );
  }
}
