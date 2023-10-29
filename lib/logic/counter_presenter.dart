import 'package:flutter/material.dart';

import '../models/counter_model.dart';
import '../views/widgets/snackbar.dart';

//The presenter acts upon the model and the view.
//It retrieves data from repositories (the model),
//make a logics which users actions
// and formats it for display in the view

class CounterPresenter {
  final CounterModel model;
  CounterPresenter(this.model);

// increments
  void increment() {
    model.counter++;
  }

//decrements
  void decrement(BuildContext context) {
    if (model.counter <= 0) {
      model.counter = 0;
      showSnackBar(context);
    } else {
      model.counter--;
    }
  }

  void reset() {
    model.counter = 0;
  }
}
