// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myride/widgets/add_todos.dart';
import 'package:myride/widgets/all_todos.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodoManager"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: "All"),
            Tab(text: "Incompleted"),
            Tab(text: "Completed"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          AllTaskBar(),
          CompletedTab(),
          IncompletedTab(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddTasks()));
        },
        child: Icon(Icons.add),
        tooltip: "Add new todo",
        backgroundColor: Colors.red,
      ),
    );
  }
}
