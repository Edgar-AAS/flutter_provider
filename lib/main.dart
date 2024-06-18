import 'package:flutter/material.dart';
import 'package:flutter_states_management/model/task_manager.dart';
import 'package:flutter_states_management/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskManager>(
      create: (BuildContext context) {
        return TaskManager();
      },
      child: const MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
