class Student {
  final String name;
  final String rollNo;
  final String imageUrl;
  final String department;
  final String batch;
  final int parentNo;
  final int studentNo;

  Student({
    required this.name,
    required this.rollNo,
    required this.imageUrl,
    required this.department,
    required this.batch,
    required this.parentNo,
    required this.studentNo,
  });

  factory Student.fromMap(Map<String, dynamic> data) {
    return Student(
      name: data['name'],
      rollNo: data['rollNo'],
      imageUrl: data['imageUrl'],
      department: data['department'],
      batch: data['batch'],
      parentNo: data['parentNo'],
      studentNo: data['studentNo'],
    );
  }
}
