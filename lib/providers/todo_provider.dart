import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:news_app/models/task.dart';

class TodoProvider extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Algorithm'),
    Task(title: 'operating system'),
    Task(title: 'software engineering'),
  ];

  UnmodifiableListView<Task> get allTasks => UnmodifiableListView(_tasks);
  UnmodifiableListView<Task> get completedTasks =>
      UnmodifiableListView(_tasks.where((todo) => todo.isCompleted));
  UnmodifiableListView<Task> get incompleteTasks =>
      UnmodifiableListView(_tasks.where((todo) => !todo.isCompleted));

  void addTodo(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTodo(Task task) {
    final taskIndex = _tasks.indexOf(task);
    _tasks[taskIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteTodo(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
