import 'package:flutter/material.dart';

import 'bg_image.dart';
class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameContriller,
  }) : _nameContriller = nameContriller, super(key: key);

  final String myText;
  final TextEditingController _nameContriller;

  @override
  Widget build(BuildContext context) {
    return Column(
    children: <Widget>[
      Bgimage(),
      SizedBox(
        height:20,
      ),
      Text(
        myText,
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height:20,
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _nameContriller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Something here",
            labelText: "Name",
          ),
          ),
        ),
      
    ],
    );
  }
}