import 'package:flutter/material.dart';
import 'package:task_provider/models/task_model.dart';

class Tasks with ChangeNotifier {
  final List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  addTask({
    required String title,
    required String description,
  }) {
    _tasks.add(Task(
      title: title,
      description: description,
    ));
    notifyListeners();
  }

  updateTask({required int index, required bool done}) {
    _tasks[index].isDone = done;
    notifyListeners();
  }

  changeDoneTask({required int index, required bool done}) {
    _tasks[index].isDone = done;
    notifyListeners();
  }

  deleteTask({required index}) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
