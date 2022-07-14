import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_provider/states/tasks_state.dart';

class UpdateTaskScreen extends StatelessWidget {
  UpdateTaskScreen({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    String title = Provider.of<Tasks>(context).tasks[index].title;
    String description = Provider.of<Tasks>(context).tasks[index].description;
    TextEditingController titleController = TextEditingController(
      text: title,
    );
    TextEditingController descriptionController = TextEditingController(
      text: description,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Save',
              style: TextStyle(color: Colors.white),
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
            ),
          ],
        ),
      ),
    );
  }
}
