import 'package:flutter/material.dart';
import 'package:provider_examples/provider_to_do_app/model/task_model.dart';

class TaskProvider with ChangeNotifier {
  // List to hold tasks
  final List<Task> _tasks = [];

  // Getter to access the tasks
  List<Task> get tasks => _tasks;

  // Add a new task
  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners(); // Notify listeners when a task is added
  }

  // Update task status
  void updateTask(Task task) {
    task.isCompleted = !task.isCompleted;
    notifyListeners(); // Notify listeners when task is updated
  }

  // Delete a task
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners(); // Notify listeners when a task is deleted
  }

  // Filter tasks by completion status
  List<Task> get completedTasks =>
      _tasks.where((task) => task.isCompleted).toList();
  List<Task> get incompleteTasks =>
      _tasks.where((task) => !task.isCompleted).toList();
}
