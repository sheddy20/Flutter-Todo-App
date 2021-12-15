import 'package:flutter/material.dart';

class Task {
  String? title;
  bool? completed;

  Task({@required this.title, @required this.completed});

  void updateCompletion() {
    completed = !completed!;
  }
}
