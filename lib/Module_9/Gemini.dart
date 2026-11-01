// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class crud_flygrund extends StatefulWidget {
//   const crud_flygrund({super.key});
//
//   @override
//   State<crud_flygrund> createState() => _crud_flygrundState();
// }
//
// class _crud_flygrundState extends State<crud_flygrund> {
//   List<Map<String,dynamic>>student =[];
//
//   TextEditingController nameController = TextEditingController();
//   TextEditingController ageController = TextEditingController();
//   int? editingId;
//
//   @override
//   void initState() {
//     super.initState();
//     readStudent();
//   }
//
//   @override
//   void dispose() {
//     nameController.dispose();
//     ageController.dispose();
//     super.dispose();
//   }
//
//   // Open Database
//   Future<Database> openMYdatabase() async {
//     String folder = await getDatabasesPath();
//     String path = join(folder, 'deel_kaiyum.db');
//     return openDatabase(
//       path,
//       version: 1,
//       onCreate: (db, version) async {
//         await db.execute('''
//           CREATE TABLE student (
//             id INTEGER PRIMARY KEY AUTOINCREMENT,
//             name TEXT,
//             age INTEGER
//           )
//         ''');
//       },
//     );
//   }
//
//   // Add
//   Future<void> addStudent() async {
//     Database db = await openMYdatabase();
//     await db.insert('student', {
//       'name': nameController.text,
//       'age': int.parse(ageController.text),
//     });
//     clearBoxes();
//     readStudent(); // ডেটা যোগ করার পর লিস্ট আপডেট করতে হবে
//   }
//
//   // Read
//   Future<void> readStudent() async {
//     Database db = await openMYdatabase();
//     List<Map<String,dynamic>> rows = await db.query('student');
//     setState(() {
//       student = rows;
//     });
//   }
//
//   // Update
//   Future<void> updateStudent() async {
//     Database db = await openMYdatabase();
//     await db.update(
//       'student',
//       {
//         'name': nameController.text,
//         'age': int.parse(ageController.text),
//       },
//       where: 'id = ?',
//       whereArgs: [editingId],
//     );
//     clearBoxes();
//     readStudent(); // ডেটা আপডেট করার পর লিস্ট রিফ্রেশ করতে হবে
//   }
//
//   // Delete
//   Future<void> deleteStudent(int id) async {
//     Database db = await openMYdatabase();
//     await db.delete(
//       'student',
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//     clearBoxes();
//     readStudent(); // ডেটা ডিলিট করার পর লিস্ট রিফ্রেশ করতে হবে
//   }
//
//   // Edit শুরু করার সময় পুরো Map পাস করতে হবে
//   void startEditing(Map<String, dynamic> studentData) {
//     setState(() {
//       editingId = studentData['id'];
//       nameController.text = studentData['name'];
//       ageController.text = studentData['age'].toString();
//     });
//   }
//
//   void savebutton() {
//     if (nameController.text.isEmpty || ageController.text.isEmpty) return;
//
//     if (editingId == null) {
//       addStudent();
//     } else {
//       updateStudent();
//     }
//   }
//
//   void clearBoxes() {
//     setState(() {
//       editingId = null;
//       nameController.clear();
//       ageController.clear();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Crud Playground'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             const SizedBox(height: 8),
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: 'Enter Name',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             TextField(
//               controller: ageController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'Enter Age',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             ElevatedButton(
//               onPressed: savebutton,
//               child: Text(editingId == null ? "ADD" : "UPDATE"),
//             ),
//             const SizedBox(height: 8),
//             const Center(
//               child: Text('Tap a Student To Edit. Tap the bin to delete'),
//             ),
//             const SizedBox(height: 8),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: student.length,
//                 itemBuilder: (context, index) {
//                   Map<String, dynamic> students = student[index];
//                   return ListTile(
//                     leading: Container(
//                       width: 30,
//                       height: 30,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: Colors.blueAccent,
//                       ),
//                       child: Alignment.center == Alignment.center
//                           ? Center(
//                         child: Text(
//                           '${students['id']}',
//                           style: const TextStyle(
//                             fontSize: 16,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       )
//                           : null,
//                     ),
//                     title: Text('Name: ${students['name']}'),
//                     subtitle: Text('Age: ${students['age']}'),
//                     onLongPress: () {
//                       startEditing(students); // পুরো map পাঠানো হলো
//                     },
//                     trailing: IconButton(
//                       onPressed: () {
//                         deleteStudent(students['id']);
//                       },
//                       icon: const Icon(Icons.delete, color: Colors.red),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }