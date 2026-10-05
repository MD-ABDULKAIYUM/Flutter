import 'package:flutter/material.dart';
class Demo extends StatelessWidget {
  final String name ;

  const Demo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
        backgroundColor: Colors.orange,

      ),
      body: Column(
        children: [
          Text(name,style: TextStyle(
            fontSize: 60
          ),)
        ],
      ),
    );
  }
}
