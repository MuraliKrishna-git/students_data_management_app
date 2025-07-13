import 'package:flutter/material.dart';
import 'batch_screen.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  void navigateToBatch(BuildContext context, String department) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => BatchScreen(department: department)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("PG Courses", style: TextStyle(fontSize: 18)),
            ElevatedButton(onPressed: () => navigateToBatch(context, "MBA"), child: const Text("MBA")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "MCA"), child: const Text("MCA")),
            const SizedBox(height: 20),
            const Text("UG Courses", style: TextStyle(fontSize: 18)),
            ElevatedButton(onPressed: () => navigateToBatch(context, "CSE"), child: const Text("CSE")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "ECE"), child: const Text("ECE")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "MECH"), child: const Text("MECH")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "IT"), child: const Text("IT")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "CIVIL"), child: const Text("CIVIL")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "EEE"), child: const Text("EEE")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "AI"), child: const Text("AI")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "DS"), child: const Text("DS")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "AIML"), child: const Text("AIML")),
            ElevatedButton(onPressed: () => navigateToBatch(context, "CS"), child: const Text("CS")),
          ],
        ),
      ),
    );
  }
}
