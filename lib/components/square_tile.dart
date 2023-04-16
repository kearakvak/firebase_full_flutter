// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class SwquareTile extends StatelessWidget {
   SwquareTile({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
        color: Colors.green.shade100,
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
