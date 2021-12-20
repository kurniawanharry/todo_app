import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Drink'),
    Task(name: 'Buy Food'),
    Task(name: 'Buy Faith'),
  ];

  // UnmodifiableListView<Task> get tasks {
  //   return UnmodifiableListView(_tasks);
  // }

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newValue) {
    final task = Task(name: newValue);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
