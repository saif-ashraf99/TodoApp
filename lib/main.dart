import 'package:flutter/material.dart';
import 'package:news_app/models/task.dart';
import 'package:news_app/providers/todo_provider.dart';
import 'package:news_app/screens/all_tasks.dart';
import 'package:news_app/screens/home.dart';
import 'package:news_app/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(TodosApp());

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TodoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todos',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}
