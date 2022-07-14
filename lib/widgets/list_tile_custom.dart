import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_provider/models/task_model.dart';
import 'package:task_provider/states/tasks_state.dart';

class ListTileCustom extends StatelessWidget {
  ListTileCustom({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Provider.of<Tasks>(context).tasks.length,
        itemBuilder: (context, index) {
          Task task = Provider.of<Tasks>(context).tasks[index];
          return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              value: task.isDone,
              onChanged: (isChange) {
                Provider.of<Tasks>(context, listen: false)
                    .changeDoneTask(index: index, done: isChange!);
              },
            ),
          );
        },
      ),
    );
  }
}
