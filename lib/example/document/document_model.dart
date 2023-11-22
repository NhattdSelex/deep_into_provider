import 'dart:developer';

import 'package:flutter/material.dart';

class DocumentModel extends ChangeNotifier {
  int count = 12;

  void increment() {
    count++;
    log(count.toString());
    notifyListeners();
  }

  void decrement() {
    count--;
    log(count.toString());
    notifyListeners();
  }
}
