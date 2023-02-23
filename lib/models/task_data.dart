import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/models.dart';

class TaskData extends ChangeNotifier {
  String data = '';
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount => tasks.length;

  void addTask() {
    final task = Task(name: data);
    tasks.add(task);
    notifyListeners();
  }

  void changeString(String newString) {
    data = newString;
    notifyListeners();
  }
}
