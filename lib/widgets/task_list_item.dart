import 'package:flutter/material.dart';
import 'package:news_app/models/task.dart';
import 'package:news_app/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class TaskListItem extends StatelessWidget {
  late final Task task;
  TaskListItem({required this.task});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task.isCompleted,
        onChanged: (checked) {
          Provider.of<TodoProvider>(context, listen: false).toggleTodo(task);
        },
      ),
      title: Text(task.title),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: () {
          Provider.of<TodoProvider>(context, listen: false).deleteTodo(task);
        },
      ),
    );
  }
}
