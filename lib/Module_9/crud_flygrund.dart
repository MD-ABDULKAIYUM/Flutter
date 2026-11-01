import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class crud_flygrund extends StatefulWidget {
  const crud_flygrund({super.key});

  @override
  State<crud_flygrund> createState() => _crud_flygrundState();
}

class _crud_flygrundState extends State<crud_flygrund> {
  List<Map<String,dynamic>> student =[];

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  int ? editingId;
  @override
  void initState() {
    super.initState();
    readStudent();
  }
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    ageController.dispose();
  }
  // Open Database
  Future<Database> openMYdatabase() async{
    String folder = await getDatabasesPath();
    String path = join(folder,'deel_kaiyum.db');
    return openDatabase(path,version: 1,
        onCreate: (db, version) async{
      await db.execute(
        '''
            CREATE TABLE student (
              id INTEGER PRIMARY KEY  AUTOINCREMENT,
              name TEXT,
              age INTEGER


            )
        '''
      );
    });
  }

  //Add
  Future<void> addStudent() async{
    Database db = await openMYdatabase();
    await db.insert('student', {
      'name':nameController.text,
      'age':int.parse(ageController.text)
    });
    clearBoxes();
    await readStudent();
  }

  //Read

  Future<void> readStudent() async{
    Database db = await openMYdatabase();
    List<Map<String, dynamic>> rows = await db.query('student');
    setState(() {
      student =rows;
    });

  }

  //Update
  Future<void> updateStudent() async {
    Database db = await openMYdatabase();
    await db.update('student', {
      'name':nameController.text,
      'age':int.parse(ageController.text)
    },where: 'id = ?',
     whereArgs: [editingId],
    );
    clearBoxes();
    await readStudent();


  }

  // Delete
  Future<void> deleteStudent(int id) async {
    Database db = await openMYdatabase();
    await db.delete('student',
      where: 'id = ?',
      whereArgs: [id],
    );
    clearBoxes();
    await readStudent();
  }
  Future<void> startEdting(Map<String,dynamic> student)async{
    setState(() {
      editingId =student['id'];
      nameController.text =student['name'];
      ageController.text=student['age'].toString();

    });
    await readStudent();
  }

  void savebutton(){
    if(nameController.text.isEmpty || ageController.text.isEmpty)
      return;

    if (editingId==null){
      addStudent();
    }
    else{
      updateStudent();
    }
  }
  void clearBoxes(){
    editingId = null;
    nameController.clear();
    ageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crud Playground'),),
      body:Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          spacing: 8,
          children: [

          TextField(
            controller:nameController,
            decoration: InputDecoration(
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),

            ),
          ),


          TextField(
            controller: ageController,
            decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
            ),
          ),

          ElevatedButton(onPressed: savebutton,
              child: Text(editingId==null?"ADD":"UPDATE")
          ),

          const Center(child: Text('Tap a Student To Edt . Tap  the bin to delete'),) ,
            Expanded(
              child: ListView.builder(
                itemCount: student.length,
                itemBuilder: (context,index){
                  Map<String,dynamic> students = student[index];
                  return ListTile(
                    leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blueAccent
                      ),
                      child: Align(
                        alignment: .center,
                        child: Text('${students['id']}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    title: Text('Name: ${students['name']}'),
                    subtitle: Text('Age: ${students['age']}'),
                    onLongPress: (){
                      startEdting(students);
                    },
                    trailing: IconButton(
                      onPressed: (){

                        deleteStudent(students['id']);
                        setState(() {

                        });
                      }


                    , icon: Icon(Icons.delete,color: Colors.red,)),

                  );
                }


              ),
            )
        ],

        ),
      )
    );
  }
}
