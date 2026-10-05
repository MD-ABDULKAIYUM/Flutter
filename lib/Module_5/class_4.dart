import 'package:flutter/material.dart';

import 'Demo.dart';
import 'Gridv.dart';
class Modulele_6Class4 extends StatefulWidget {
   Modulele_6Class4({super.key});


  @override
  State<Modulele_6Class4> createState() => _Modulele_6Class4State();
}

class _Modulele_6Class4State extends State<Modulele_6Class4> {
  int num =0;
  bool isShowpassword =true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Class4'),
        backgroundColor: Colors.orange,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridv()));
            }, child: Text('Pri')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Demo(name: 'Abdul Kaiyum',)));
            }, child: Text('Demo')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Demo(name: 'Abdul Kaiyum',)));
            }, child: Text('Demo')),


            TextField(

              obscureText: isShowpassword,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(
                    color: Colors.black45,

                  ),
                  helperText: 'Password',
                  helperStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.blueAccent,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.lightGreen,
                  ),
                  prefixIcon: Icon(Icons.lock,color: Colors.teal,),
                  suffixIcon: IconButton(onPressed: (){

                    setState(() {
                      isShowpassword =! isShowpassword;

                    });
                  }, icon:Icon(Icons.remove_red_eye),
                  // bor: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(20)
                  // )
              ),

            ),
            ),

            Text(num.toString(),style: TextStyle(
              fontSize: 50,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    num++;
                  });


                  print(num);
                }, icon: Icon(Icons.add,size: 50,)),
                IconButton(onPressed: (){
                  num--;
                  setState(() {

                  });
                  print(num);
                }, icon: Icon(Icons.minimize,size: 50,)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
