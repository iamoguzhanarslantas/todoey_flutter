import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function(String?) addTaskCallBack;
  const AddTaskScreen({super.key, required this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    String? newTextTitle;

    return ColoredBox(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTextTitle = newText;
              },
            ),
            ElevatedButton(
              onPressed: (){
                addTaskCallBack(newTextTitle);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
