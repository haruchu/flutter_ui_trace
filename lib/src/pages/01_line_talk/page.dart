import 'package:flutter/material.dart';

class LineTalkPage extends StatelessWidget {
  static const text = "line";

  const LineTalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LINE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(text),
          ],
        ),
      ),
    );
  }
}
