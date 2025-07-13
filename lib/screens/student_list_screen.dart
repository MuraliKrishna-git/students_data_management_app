import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/student_model.dart';
import '../widgets/student_card.dart';

class StudentListScreen extends StatefulWidget {
  final String department;
  final String batch;

  const StudentListScreen({super.key, required this.department, required this.batch});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final studentsRef = FirebaseFirestore.instance.collection('students1')
        .where('department', isEqualTo: widget.department)
        .where('batch', isEqualTo: widget.batch);

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.department} ${widget.batch}'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Search by name or roll number',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() => searchQuery = value.toLowerCase()),
            ),
          ),
          Expanded(
            child: StreamBuilder(
              stream: studentsRef.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) return const Center(child: Text("Error loading students"));
                if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

                final students = snapshot.data!.docs
                    .map((doc) => Student.fromMap(doc.data()))
                    .where((student) =>
                student.name.toLowerCase().contains(searchQuery) ||
                    student.rollNo.toLowerCase().contains(searchQuery))
                    .toList();

                return ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (_, index) => StudentCard(student: students[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
