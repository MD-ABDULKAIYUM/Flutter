import 'package:flutter/material.dart';
class Mclass_5 extends StatelessWidget {
  const Mclass_5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('class_3'),
        backgroundColor:Colors.redAccent,
      ),
      body:Column(
        children: [
          ///  NOT chilickable
          Icon(
            Icons.mobile_off,
            size: 55,
            color:Colors.pink,


          ),
          IconButton(
              icon:Icon(Icons.apple),
              onPressed:(){
                print("I'M ABDUL KAIYUM");
             },
            iconSize: 88,
          )




        ],
      ),
    );
  }
}
