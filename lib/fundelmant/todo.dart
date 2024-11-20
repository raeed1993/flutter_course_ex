import 'package:flutter/material.dart';


class TaskListScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskListScreen(),
    );
  }
}

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  // قائمة لحفظ المهام
  List<Map> tasks = [

  ];

  // وظيفة لإضافة مهمة جديدة
  void _addTask() {
    setState(() {
      tasks.add({'text': 'New Task', 'isCompleted': false});
    });
  }

  // وظيفة لتحديث حالة الـ Checkbox
  void _toggleTaskCompletion(int index) {
    setState(() {
      tasks[index]['isCompleted'] = !tasks[index]['isCompleted'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Checkbox(
              value: tasks[index]['isCompleted'],
              onChanged: (value) {
                _toggleTaskCompletion(index);
              },
            ),
            title: Text(
              tasks[index]['text'],
              style: TextStyle(
                decoration: tasks[index]['isCompleted']
                    ? TextDecoration.lineThrough // خط على النص إذا كانت المهمة مكتملة
                    : TextDecoration.none,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask, // استدعاء وظيفة إضافة مهمة
        child: Icon(Icons.add),
      ),
    );
  }
}
