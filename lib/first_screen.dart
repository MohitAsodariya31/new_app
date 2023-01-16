import 'package:flutter/material.dart';
import 'package:new_app/componants/common_button.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Common Widget"),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            CommonButton(
              title: "Okay",
              isArrow: true,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
