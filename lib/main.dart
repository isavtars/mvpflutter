import 'package:flutter/material.dart';
import 'package:mvpflutter/views/counter_screen.dart';

import 'logic/counter_presenter.dart';
import 'models/counter_model.dart';

final CounterModel model = CounterModel();
void main() {
  runApp(
    MyApp(),
  );
}
//fsfdsfdsf

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final CounterPresenter presenter = CounterPresenter(model);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(
        presenter: presenter,
      ),
    );
  }
}
