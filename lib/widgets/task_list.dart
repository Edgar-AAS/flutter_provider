import 'package:flutter/material.dart';
import 'package:flutter_states_management/model/task_manager.dart';
import 'package:flutter_states_management/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskManager>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.getCount,
          itemBuilder: (context, index) {
            final task = taskData.getTaskBy(index);
            return TaskTile(
              task: task,
              checkBoxCallback: () {
                taskData.toogleCheckBoxState(task);
              },
              onLongPressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          });
    });
  }
}
