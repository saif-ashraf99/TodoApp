import 'package:flutter/material.dart';
import 'package:news_app/providers/todo_provider.dart';
import 'package:news_app/widgets/task_list.dart';
import 'package:provider/provider.dart';

class IncompleteTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodoProvider>(
        builder: (context, todos, child) => TaskList(
          tasks: todos.incompleteTasks,
        ),
      ),
    );
  }
}
