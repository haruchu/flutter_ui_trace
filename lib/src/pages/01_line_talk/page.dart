import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class LineTalkPage extends StatelessWidget {
  static const text = "line";
  static const allTalkCount = 99;
  static const talkName = "太郎";

  const LineTalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 99, 166, 217),
            leadingWidth: 200,
            leading: Row(
              children: [
                IconButton(
                  color: Colors.black,
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                // ignore: prefer_const_constructors
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: Text(
                        allTalkCount >= 99
                            ? "$allTalkCount+"
                            : allTalkCount.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Text(
                      talkName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
            actions: [
              Row(
                children: [
                  IconButton(
                    color: Colors.black,
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                  IconButton(
                    color: Colors.black,
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.call,
                    ),
                  ),
                  IconButton(
                    color: Colors.black,
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
                ],
              )
            ],
          )),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/line_talk_background.png'),
            fit: BoxFit.cover,
          )),
          child: ListView(
            padding: const EdgeInsets.only(top: 20, left: 10),
            children: <Widget>[
              Bubble(
                alignment: Alignment.topRight,
                padding: const BubbleEdges.all(10),
                nip: BubbleNip.rightTop,
                radius: const Radius.circular(16),
                color: const Color.fromRGBO(225, 255, 199, 1.0),
                child: const Text('Hello, World!'),
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  Bubble(
                    alignment: Alignment.topLeft,
                    padding: const BubbleEdges.all(10),
                    radius: const Radius.circular(16),
                    margin: const BubbleEdges.only(top: 10),
                    nip: BubbleNip.leftTop,
                    child: const Text('Hi, developer!'),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
