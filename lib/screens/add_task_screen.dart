import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_provider/states/tasks_state.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
        actions: [
          TextButton(
            onPressed: () {
              Provider.of<Tasks>(context, listen: false).addTask(
                title: titleController.text,
                description: descriptionController.text,
              );
              Navigator.of(context).pop();
            },
            child: const Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Title:'),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: titleController,
              autofocus: true,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Description:'),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
