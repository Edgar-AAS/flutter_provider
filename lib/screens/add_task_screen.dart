import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final Function(String) addTaskCallback;

  const AddTaskScreen({super.key, required this.addTaskCallback});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? taskTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            autofocus: true,
            onChanged: (newValue) {
              taskTitle = newValue;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            height: 60,
            color: Colors.lightBlueAccent,
            onPressed: () {
              widget.addTaskCallback(taskTitle ?? '');
            },
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
