// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myride/models/task.dart';
import 'package:myride/models/todos_model.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatelessWidget {
  final Task? task;
  const TodoPage({Key? key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task!.completed!,
        onChanged: (bool? checked) {
          Provider.of<TodoModel>(context, listen: false).toggleTodo(task!);
        },
      ),
      title: Text(task!.title!),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: () {
          Provider.of<TodoModel>(context, listen: false).deleteTodo(task!);
        },
      ),
    );
  }
}
