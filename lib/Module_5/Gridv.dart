import 'package:flutter/material.dart';
class Gridv extends StatelessWidget {
  const Gridv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module_6Class1 Grid viw'),
        backgroundColor: Colors.lightBlue,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 30,
        itemBuilder: (context,index){
          return Card(
            color: Colors.deepOrange,

            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                Text('Cash Out',
                  style: TextStyle(
                    fontSize: 16,
                  ),

                )
              ],
            ),
          );
        }
      )

      // GridView.count(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      //     Container(
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       color: Colors.white12,
      //     ),
      //     Container(
      //       color: Colors.blueAccent,
      //     ),
      //     Container(
      //       color: Colors.lightGreen,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.amberAccent,
      //     ),
      //     Container(
      //       color: Colors.blueAccent,
      //     ),
      //     Container(
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       color: Colors.deepPurple,
      //     ),
      //
      //   ],
      //
      // ),

    );
  }
}
