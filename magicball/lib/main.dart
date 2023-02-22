import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Ask Me Anything"),
          backgroundColor: const Color.fromARGB(255, 4, 133, 239),
        ),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballPageNumber = 1;
  changePage() {
    setState(() {
      ballPageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              //we can use setstate here but using as function make it easier if we have to use it for more images
              changePage();
            },
            child: Image.asset('images/ball$ballPageNumber.png'),
          ),
        )
      ]),
    );
  }
}
