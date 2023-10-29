import 'package:flutter/material.dart';

class CustomeBtns extends StatelessWidget {
  const CustomeBtns(
      {super.key,
      required this.onPressed,
      required this.iconns,
      required this.backgroundColour});

  final VoidCallback onPressed;
  final IconData iconns;
  final Color backgroundColour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70,
        width: 100,
        decoration: BoxDecoration(
            color: backgroundColour,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(221, 199, 183, 183),
                  offset: Offset(1, 2),
                  spreadRadius: 0.5,
                  blurRadius: 0.5)
            ],
            shape: BoxShape.circle),
        child: Center(
            child: Icon(
          iconns,
          color: Colors.white,
        )),
      ),
    );
  }
}
