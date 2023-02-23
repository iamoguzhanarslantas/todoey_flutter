import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/models.dart';
import 'package:todoey_flutter/widgets/widgets.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) { 
        return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkBoxCallBack: (bool? checkBoxState) {},
          );
        },
        itemCount: taskData.taskCount,
      );
       },
    );
  }
}
