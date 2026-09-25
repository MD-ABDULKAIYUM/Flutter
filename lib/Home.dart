import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,
        
            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,
        
            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,
        
            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,
        
            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,

            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,

            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,

            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,

            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,

            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,

            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,

            ),),
            Text('Hello World', style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,

            ),),
        
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text('Hello World', style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 50,
                      
                  ),),
                  Text('Abdul Kaiyum', style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 50,
                      
                  ),),
                      
                      
                ],
              ),
            )
          ],
        ),
      )

    );
  }
}