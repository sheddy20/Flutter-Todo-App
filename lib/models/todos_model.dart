// ignore_for_file: missing_required_param

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myride/models/task.dart';

class TodoModel extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: "Visit Miami"),
    Task(title: "Talk to benita"),
    Task(title: "Share with friends"),
  ];

  UnmodifiableListView<Task> get allTask => UnmodifiableListView(_tasks);
  UnmodifiableListView<Task> get incompleteTasks =>
      UnmodifiableListView(_tasks.where((todo) => !todo.completed!));
  UnmodifiableListView<Task> get completedTasks =>
      UnmodifiableListView(_tasks.where((todo) => todo.completed!));

  void addTodo(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTodo(Task task) {
    final taskIndex = _tasks.indexOf(task);
    _tasks[taskIndex].updateCompletion();
    notifyListeners();
  }

  void deleteTodo(Task task) {
    _tasks.remove(task);
  }
}
