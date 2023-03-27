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
        child: const Center(
          child: Text(
            'line',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
