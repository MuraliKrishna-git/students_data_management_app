import 'package:flutter/material.dart';
import 'student_list_screen.dart';

class BatchScreen extends StatelessWidget {
  final String department;
  const BatchScreen({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    final batches = ["2021", "2022", "2023", "2024"];
    return Scaffold(
      appBar: AppBar(title: Text("$department Batches")),
      body: ListView.builder(
        itemCount: batches.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Batch ${batches[index]}"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => StudentListScreen(department: department, batch: batches[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
