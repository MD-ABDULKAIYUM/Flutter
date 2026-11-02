import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
class Assignment9 extends StatefulWidget {
  const Assignment9({super.key});

  @override
  State<Assignment9> createState() => _Assignment9State();
}

class _Assignment9State extends State<Assignment9> {
  @override
  List<Map<String,dynamic>> student =[];
  int? edtingid;
  @override
  void initState() {
    super.initState();
    Readdatabase();
  }
  @override
  void dispose(){
    super.dispose();
    namecontroller.dispose();
    phonecontroller.dispose();
    emailcontroller.dispose();
    addresscontroller.dispose();

  }
  //Open database
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  Future<Database> OpenMydatabase () async{
    String Folder =await getDatabasesPath();
    String path =join(Folder,'Contact_Management.App');
    return openDatabase(path,version: 1,
    onCreate: (db,version) async{
      await db.execute(
        '''
        CREATE TABLE student(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        phone INTEGER,
        email TEXT,
        address TEXT,
        
        )
        '''

      );
    }
    );
    
  }

  // Add data base
  Future<void> Adddatabase() async{
    Database db = await OpenMydatabase();
    db.insert('student',{
      'name':namecontroller.text,
      'phone':int.parse(phonecontroller.text),
      'email':emailcontroller.text,
      'address':addresscontroller.text,
    });
    clearBosxes();
    await Readdatabase();

  }

  Future<void> Readdatabase() async{
    Database db = await OpenMydatabase();
    List<Map<String,dynamic>> rows = await db.query('student');
    setState(() {
      student =rows;

    });
    clearBosxes();
    Readdatabase();

  }

  Future<void> UpdateDatabase()async{
    Database db = await OpenMydatabase();
    await db.update('student', {
      'name':namecontroller.text,
      'phone':int.parse(phonecontroller.text),
      'email':emailcontroller.text,
      'address':addresscontroller.text,



    },where: 'id=?',
        whereArgs: [edtingid]

    );
    clearBosxes();
    Readdatabase();

  }

  //Delete Student
  Future<void> Deletedatabase(int id) async{
    Database db = await OpenMydatabase();
    await db.delete('student',
    where: 'id=?',
        whereArgs: [id]


    );
    clearBosxes();
    Readdatabase();

  }

  Future<void> startedting(Map<String,dynamic> student) async{
    setState(() {
      edtingid = student['id'];
      namecontroller.text =student['name'];
      phonecontroller.text = student['phone'].toString();
      emailcontroller.text= student['email'];
      addresscontroller.text=student['address'];
    });
  }
  void savebutton(){
    if(namecontroller.text.isEmpty || phonecontroller.text.isEmpty || emailcontroller.text.isEmpty||addresscontroller.text.isEmpty)
        return;
    if(edtingid == null){
      Adddatabase();
    }
    else{
      UpdateDatabase();
    }
  }
  void clearBosxes(){
    edtingid =null;
    namecontroller.clear();
    phonecontroller.clear();
    emailcontroller.clear();
    addresscontroller.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Apps'),
      backgroundColor: Colors.deepOrange,
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(8),

        child: Column(
          spacing: 15,
          children: [
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                hintText: 'Name',
              ),

            ),
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                hintText: 'Phone',
              ),
            ),
        
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                hintText: 'Email'
              ),
            ),
        
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                hintText:'Address',

              ),
            ),
            ElevatedButton(onPressed: savebutton,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),

                child: Text(edtingid==null?'ADD':'UPDATE')),
            ListView.builder(
              itemCount: student.length,
              itemBuilder: (context,index){
                Map<String,dynamic> Student =student[index];
              }
            )

        
            
        
          ],
        ),
      ),

    );

  }
}
