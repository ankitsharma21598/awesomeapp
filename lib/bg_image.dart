import 'package:flutter/material.dart';


class Bgimage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/main.jpg",
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.6),
      colorBlendMode: BlendMode.darken,
    );
  }
}