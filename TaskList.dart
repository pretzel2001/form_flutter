import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  String getTimeString() {
    final now = DateTime.now();
    final hour = now.hour.toString().padLeft(2, '0');
    final minute = now.minute.toString().padLeft(2, '0');
    final timeString = "$hour:$minute" + " ";
    return timeString;
  }

  String getDateString() {
    final now = DateTime.now();
    final year = now.year.toString();
    final monthNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
    final month = monthNames[now.month - 1];
    final day = now.day.toString().padLeft(2, '0');
    final dateString = "$day" + " "+"$month" + ", "+"$year";
    return dateString;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Board", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black87)),
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white70,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.05),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 15, bottom: 0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Task One", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                Text("Your Personal task management and planning solution for planning your day, week & months"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(getTimeString() + "  " + getDateString()),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.05),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 15, bottom: 0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Task Two", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                Text("Your Personal task management and planning solution for planning your day, week & months"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(getTimeString() + "  " + getDateString()),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.05),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 15, bottom: 0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Task Three", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                Text("Your Personal task management and planning solution for planning your day, week & months"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(getTimeString() + "  " + getDateString()),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black87.withOpacity(0.7),
        child: Icon(Icons.add, color: Colors.white, size: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

