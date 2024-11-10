import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:server_driven_ui_flutter_example/constants/app_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget? bodyWidget;

  @override
  void initState() {
    setState(() {
      bodyWidget = Mirai.fromAssets(AppConstants.serverUiJson);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter SDUI Example"),
        backgroundColor: Colors.blueGrey,
        leading: const Icon(
          Icons.home,
          color: Colors.black,
        ),
      ),
      body: bodyWidget ?? const CircularProgressIndicator(),
    );
  }
}
