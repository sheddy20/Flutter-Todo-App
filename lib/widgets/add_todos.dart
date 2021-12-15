// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:myride/models/task.dart';
import 'package:myride/models/todos_model.dart';
import 'package:provider/provider.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  final taskcontroller = TextEditingController();
  bool completedStatus = false;

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    taskcontroller.dispose();
    super.dispose();
  }

  void addTask() {
    final String textvalue = taskcontroller.text;
    final bool completed = completedStatus;
    if (textvalue.isNotEmpty) {
      final Task todo = Task(title: textvalue, completed: completed);
      Provider.of<TodoModel>(context, listen: false).addTodo(todo);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(controller: taskcontroller),
                  CheckboxListTile(
                    value: completedStatus,
                    onChanged: (checked) => setState(() {
                      completedStatus = checked!;
                    }),
                    title: Text("Complete"),
                  ),
                  MaterialButton(
                    child: Text("Add"),
                    onPressed: addTask,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
