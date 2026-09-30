import 'package:flutter/material.dart';

class Module6class1 extends StatelessWidget {
  const Module6class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.pink,

      ),
      body: Column(
        children: [
          
          GestureDetector(
            onTap: (){
              print('Image Chiliked');
            },
              onLongPress: (){
                print('Long press');
              },
              onDoubleTap: (){
                print('Double press');
              },


              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnpYsVShHEYuol2TnRNSp6mFab32PA6Mj2IIRbnCII5do5qxPeD6-xLOj7&s=10')),
          
          InkWell(
              onTap: (){
                print('Image Chiliked');
              },
              onLongPress: (){
                print('Long press');
              },
              onDoubleTap: (){
                print('Double press');
              },  


              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1RA5XtFs44hvzR5zf3FlKFj-2T0YeugusqMmYv2FGVkHCBfHWAmMo2FM&s=10')),
          
          Chip(
              avatar: Icon(Icons.flutter_dash,color: Colors.white,),
              backgroundColor: Colors.orange,
              labelStyle: TextStyle(
                color: Colors.white,
              ),


              label: Text('Flutter'))


        ],
      ),

    );
  }
}
