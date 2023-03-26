import 'package:flutter/material.dart';

class LineTalkPage extends StatelessWidget {
  static const text = "line";

  const LineTalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
              leading: Row(
            children: [
              IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
              const Text("12"),
            ],
          ))),
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
