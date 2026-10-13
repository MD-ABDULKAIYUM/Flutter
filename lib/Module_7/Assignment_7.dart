import 'package:flutter/material.dart';
class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        title: Text('Contact List'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(15),
        child: ListView(
          children: [
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Enter Contact Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1),

                )

              )

            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: 'Enter Contact Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),

                    )

                )

            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding: EdgeInsets.symmetric(
                    horizontal: 150,
                    vertical: 10,

                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)
                  )

                )
                ,child: Text('Add')),

            Card(
              child: ListTile(
                title: Text('Abdul Kaiyum',style: TextStyle(
                  color: Colors.green,
                ),),
                subtitle: Text('01956565766'),
                leading: CircleAvatar(
                  child: Icon(Icons.person),
              
                ),
                trailing: Icon(Icons.call),
              
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Abdul Mannan',style: TextStyle(
                  color: Colors.green,
                ),),
                subtitle: Text('019567667876'),
                leading: CircleAvatar(
                  child: Icon(Icons.person),

                ),
                trailing: Icon(Icons.call),

              ),
            ),
            Card(
              child: ListTile(
                title: Text('Abdullah Al Mamun',style: TextStyle(
                  color: Colors.red,
                ),),
                subtitle: Text('01756565776'),
                leading: CircleAvatar(
                  child: Icon(Icons.person),

                ),
                trailing: Icon(Icons.call),

              ),
            ),
            Card(
              child: ListTile(
                title: Text('Emon',style: TextStyle(
                  color: Colors.green,
                ),),
                subtitle: Text('01956565766'),
                leading: CircleAvatar(
                  child: Icon(Icons.person),

                ),
                trailing: Icon(Icons.call),

              ),
            ),
            Card(
              child: ListTile(
                title: Text('Yousuf',style: TextStyle(
                  color: Colors.green,
                ),),
                subtitle: Text('0966446767'),
                leading: CircleAvatar(
                  child: Icon(Icons.person),

                ),
                trailing: Icon(Icons.call),

              ),
            ),
            Card(
              child: ListTile(
                title: Text('Mamun',style: TextStyle(
                  color: Colors.red,
                ),),
                subtitle: Text('01956565766'),
                leading: CircleAvatar(
                  child: Icon(Icons.person),

                ),
                trailing: Icon(Icons.call),

              ),
            ),
            Card(
              child: ListTile(
                title: Text('Morshedul Hosseain',style: TextStyle(
                  color: Colors.green,
                ),),
                subtitle: Text('01956565766'),
                leading: CircleAvatar(
                  child: Icon(Icons.person),

                ),
                trailing: Icon(Icons.call),

              ),
            ),


          ],





        ),



      ),


    );
  }
}
