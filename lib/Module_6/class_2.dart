import 'package:flutter/material.dart';
class Module_6Class_2 extends StatelessWidget {
   Module_6Class_2({super.key});
  List<Map<String,dynamic>> user =[
    {
      'name':' Mamun',
      'phone':'01944934151'

    },
    {
      'name':' Kaiyum',
      'phone':'01951983744'

    },
    {
      'name':' zura',
      'phone':'01855682046'

    },
    {
      'name':' kashem',
      'phone':'01720008956'

    },
    {
      'name':' ak',
      'phone':'01609521687'

    },
    {
      'name':' Mamun',
      'phone':'01944934151'

    },
    {
      'name':' zura',
      'phone':'01855682046'

    },
    {
      'name':' kashem',
      'phone':'01720008956'

    },
    {
      'name':' Kaiyum',
      'phone':'01951983744'

    },
    {
      'name':' zura',
      'phone':'01855682046'

    },
    {
      'name':' kashem',
      'phone':'01720008956'

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module_6Class1'),
        backgroundColor: Colors.lightBlue,
      ),
      body :ListView.builder(

          itemCount: user.length,
        itemBuilder: (context, index){
            return
              Card(
                      child: ListTile(
                        title: Text(user[index]['name']),
                        subtitle: Text(user[index]['phone']),
                        leading: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.person),
                        ),
                        trailing: Icon(Icons.call),
                      ),
                    );
        }


      ),


      // ListView(
      //   children: [
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Kaiyum'),
      //         subtitle: Text('01951983744'),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.orange,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),
      //       ),
      //     ),
      //
      //
      //   ],
      // ) ,
      
    );
  }
}
