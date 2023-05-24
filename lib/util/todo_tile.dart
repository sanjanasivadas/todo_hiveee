
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ToDoTile extends StatelessWidget{
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

   ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted, 
    required this.onChanged
    });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StrechMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.green[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
             //checkbox
             Checkbox(
              value: taskCompleted,
               onChanged: onChanged,
               activeColor: Colors.green[800],
               ),
      
              //task name
               Text(
                taskName,
                style: TextStyle(
                  decoration: taskCompleted 
                  ? TextDecoration.lineThrough 
                  : TextDecoration.none,
                  ),
                ),
            ],
          ),
          //decoration: BoxDecoration(
           // color: Colors.green[100],
           // borderRadius: BorderRadius.circular(12),
           // ),
        ),
      ),
    );
  }
}