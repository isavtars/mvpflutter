import 'package:flutter/material.dart';

void showSnackBar(BuildContext context) {
  final snackBar = SnackBar(
    content: Text('Counter value cannot be less than Zero'),
    backgroundColor: Color.fromARGB(255, 42, 42, 82),

    duration: Duration(seconds: 2), // Set the duration for the snack bar.
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
