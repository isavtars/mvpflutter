import 'package:flutter/material.dart';
import 'package:mvpflutter/logic/counter_presenter.dart';

import 'widgets/custome_btns.dart';

class CounterScreen extends StatefulWidget {
  final CounterPresenter presenter;

  const CounterScreen({super.key, required this.presenter});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "This is counter app with mvp Patterns",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 70,
                width: 100,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(1, 2),
                      spreadRadius: 0.5,
                      blurRadius: 0.5)
                ], color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: Text(
                    " ${widget.presenter.model.counter.toString()}",
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.green),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomeBtns(
                      onPressed: () {
                        setState(() {
                          widget.presenter.increment();
                        });
                      },
                      iconns: Icons.add,
                      backgroundColour: Colors.green),
                  CustomeBtns(
                      onPressed: () {
                        setState(() {
                          widget.presenter.decrement(context);
                        });
                      },
                      iconns: Icons.remove,
                      backgroundColour: Colors.red)
                ],
              ),
            ),
            CustomeBtns(
                onPressed: () {
                  setState(() {
                    widget.presenter.reset();
                  });
                },
                iconns: Icons.restart_alt,
                backgroundColour: Colors.purple),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
