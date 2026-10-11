import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Module7class3 extends StatelessWidget {
  const Module7class3({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    final width =size.width;
    final height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('responsive'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 80,
              color: Colors.deepPurpleAccent,
            ),
            SizedBox(height: 10,),
            Text('Without responsive',style: TextStyle(
                fontSize: 20
            ),),
            SizedBox(height: 15,),

            Container(
              height: height*0.10,
              width: width*0.20,
              color: Colors.deepOrangeAccent,
            ),
            SizedBox(height: 10,),
            Text('With responsive',style: TextStyle(
                fontSize: width*0.03
            ),),

            SizedBox(height: 20,),

            Container(
              height: 100.h,
              width: 80.w,
              color: Colors.deepOrangeAccent,
            ),
            SizedBox(height: 10,),
            Text('With responsive',style: TextStyle(
                fontSize: 15.sp,
            ),),


          ],
        ),
      ),
    );
  }
}
