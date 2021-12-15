// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:myride/models/todos_model.dart';
import 'package:myride/widgets/todos_list.dart';
import 'package:provider/provider.dart';

class AllTaskBar extends StatelessWidget {
  const AllTaskBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodoModel>(
        builder: (_, todos, child) => TaskList(tasks: todos.allTask),
      ),
    );
  }
}

class CompletedTab extends StatelessWidget {
  const CompletedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodoModel>(
        builder: (_, todos, child) => TaskList(tasks: todos.completedTasks),
      ),
    );
  }
}

class IncompletedTab extends StatelessWidget {
  const IncompletedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodoModel>(
        builder: (_, todos, child) => TaskList(tasks: todos.incompleteTasks),
      ),
    );
  }
}
