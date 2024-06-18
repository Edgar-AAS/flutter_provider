import 'package:flutter/material.dart';
import 'package:flutter_states_management/model/task.dart';

class TaskManager extends ChangeNotifier {
  final List<Task> _taskList = [];

  void addTask(String title) {
    if (title.isNotEmpty) {
      final task = Task(name: title.trim(), isDone: false);
      _taskList.add(task);
      notifyListeners();
    }
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }

  void toogleCheckBoxState(Task task) {
    task.toogleCheckState();
    notifyListeners();
  }

  Task getTaskBy(int index) {
    return _taskList[index];
  }

  int get getCount {
    return _taskList.length;
  }
}
