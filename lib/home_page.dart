
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_hiveee/util/todo_tile.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of todo tasks
  List toDoList = [
    ["Attend Tutorial", false],
    ["Hit the Gym", false],
  ];

// checkbox was tapped
  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text("TO DO",),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index] [0], 
            taskCompleted: toDoList[index] [1], 
            onChanged: (value) => checkBoxChanged(value, index),
            );
        },











        //children: [
         // ToDoTile(
         //   taskName: "Attend Tutorial",
         //   taskCompleted: true,
         //   onChanged: (p0) {},
         // ),
         // ToDoTile(
         //   taskName: "Hit the Gym",
         //   taskCompleted: false,
         //   onChanged: (p0) {},
          ),
        
      );
    
  }
}