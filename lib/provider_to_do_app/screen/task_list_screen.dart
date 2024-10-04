import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/provider_to_do_app/provider/task_provider.dart';
import 'add_task_screen.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle filter actions here
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'All',
                child: Text('All Tasks'),
              ),
              const PopupMenuItem(
                value: 'Completed',
                child: Text('Completed Tasks'),
              ),
              const PopupMenuItem(
                value: 'Incomplete',
                child: Text('Incomplete Tasks'),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: taskProvider.tasks.length,
        itemBuilder: (context, index) {
          final task = taskProvider.tasks[index];
          return ListTile(
            title: Text(task.title),
            subtitle: Text(task.description),
            trailing: Checkbox(
              value: task.isCompleted,
              onChanged: (value) {
                taskProvider.updateTask(task); // Mark as completed/uncompleted
              },
            ),
            onLongPress: () {
              // Delete task on long press
              taskProvider.deleteTask(task);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTaskScreen()),
          );
        },
      ),
    );
  }
}
