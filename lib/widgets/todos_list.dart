import 'package:flutter/material.dart';
import 'package:myride/models/task.dart';
import 'package:myride/widgets/todos.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  const TaskList({Key? key, required this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenTask(),
    );
  }

  List<Widget> getChildrenTask() {
    return tasks.map((todo) => TodoPage(task: todo)).toList();
  }
}
