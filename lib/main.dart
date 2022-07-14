import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_provider/screens/home_screen.dart';
import 'package:task_provider/states/tasks_state.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Tasks()),
      ],
      child: const TaskAppProvider(),
    ),
  );
}

class TaskAppProvider extends StatelessWidget {
  const TaskAppProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App Provider',
      home: HomeScreen(),
    );
  }
}
