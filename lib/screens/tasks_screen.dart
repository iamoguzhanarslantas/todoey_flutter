import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(
                Icons.list,
                size: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Todoey',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              '12 Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(13),
                  topLeft: Radius.circular(13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
