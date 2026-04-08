import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(30),
            // boxShadow: [
            //   BoxShadow(color: const Color.fromARGB(255, 116, 82, 173), blurRadius: 5, spreadRadius: 1),
            // ],
          ),
          child: Center(child: Image.asset(iconImagePath)),
        ),

        SizedBox(height: 12),

        Text(
          buttonText,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
