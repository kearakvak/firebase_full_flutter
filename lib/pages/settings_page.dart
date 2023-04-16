// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _controller = ConfettiController();
  bool isPlaying = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
          backgroundColor: Colors.pink.shade300,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Setting Page",
                    style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 247, 255, 248)),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // MaterialButton(
                  //   onPressed: () {
                  //     if (isPlaying) {
                  //       _controller.stop();
                  //     } else {
                  //       _controller.play();
                  //     }
                  //     isPlaying = !isPlaying;
                  //   },
                  //   child: Text(
                  //     " New year ",
                  //     style: TextStyle(fontSize: 50),
                  //   ),
                  //   color: Colors.yellow.shade300,
                  // ),
                ],
              ),
            ),
          ),
        ),
        ConfettiWidget(
          confettiController: _controller,
          blastDirection: pi / 2,
          gravity: 0.01,
          emissionFrequency: 0.2,
          //  particleDrag: 25,


        ),
      ],
    );
  }
}
