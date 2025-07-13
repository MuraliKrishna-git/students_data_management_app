import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/student_model.dart';

class StudentCard extends StatelessWidget {
  final Student student;
  const StudentCard({super.key, required this.student});

  void _launchCaller(int number) async {
    final url = Uri.parse("tel:$number");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  void _launchSMS(int number) async {
    final url = Uri.parse("sms:$number");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(student.imageUrl), radius: 30),
        title: Text(student.name),
        subtitle: Text(student.rollNo),
        trailing: Wrap(
          spacing: 8,
          children: [
            IconButton(icon: const Icon(Icons.call), onPressed: () => _launchCaller(student.studentNo)),
            IconButton(icon: const Icon(Icons.message), onPressed: () => _launchSMS(student.studentNo)),
            IconButton(icon: const Icon(Icons.call_end), onPressed: () => _launchCaller(student.parentNo)),
            IconButton(icon: const Icon(Icons.message_outlined), onPressed: () => _launchSMS(student.parentNo)),
          ],
        ),
      ),
    );
  }
}
