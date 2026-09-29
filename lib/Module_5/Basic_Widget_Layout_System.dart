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
      body:Center(
        child: Column(


        children: [
          ///  NOT chilickable
          Icon(
            Icons.mobile_off,
            size: 55,
            color:Colors.pink,


          ),
          SizedBox(height: 10,),
          IconButton(
              icon:Icon(Icons.apple),
              onPressed:(){
                print("I'M ABDUL KAIYUM");
             },
            iconSize: 88,


              ),
          Image.network('https://scontent.fcgp40-1.fna.fbcdn.net/v/t39.30808-6/814341963_1413871654218607_8649090467565173803_n.jpg?stp=dst-jpg_tt6&cstp=mx1086x1448&ctp=s590x590&_nc_cat=110&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeFkalygfQw9dUjruFNap0K23Zx3jfblmrfdnHeN9uWatxkq3yoYkVKEdsiUpoaNlTi3inRHs8utkO9eFyVxDdmW&_nc_ohc=CNVdzEMzsxUQ7kNvwGGvZzx&_nc_oc=AdqTUNZXMPcCJGhzBFzBhmLFiSbTLHTq3S1TU-X0u8izYvkxDB6vEdUD_OkbWtSs1Wo&_nc_zt=23&_nc_ht=scontent.fcgp40-1.fna&_nc_gid=lLEEEdc7JD9F2MJRRjObag&_nc_ss=7b2a8&oh=00_AQMqB5jMt6_g94mtEd2o8HVmQTdEe449JgEgFIXcfYKbPw&oe=6AC1AB05',
          width: 100,
            height: 100,
          //   fit: BoxFit.contain,
            //fit: BoxFit.fitWidth,
            fit: BoxFit.fitHeight,

           ),
          SizedBox(height: 20,),
          Image.asset('asset/Kaiyumflag.jpg',
            width: 100,
            height: 100,
            //fit: BoxFit.fill,
            // fit: BoxFit.cover,
            //fit: BoxFit.contain,
            //fit: BoxFit.fitHeight,
            fit: BoxFit.fitWidth,
          ),

          // support class a qustion korbo
          // Image.asset('asset/cuttun.jpg',
          //   width: 100,
          //   height: 100,)
          TextButton(onPressed:( ){
            print('Text button chiliked');
          }, child: Text('See More',style: TextStyle(
            fontSize: 22,
            color: Colors.red,
            backgroundColor: Colors.black,


          ),)),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor:Colors.white,
              padding:EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 12
              ),
              elevation: 12,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66)
              )

            ),



              onPressed: (){}, child: Text('Loging')),
          SizedBox(height: 12),

          OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.orange,
                  width: 4,
                ),


                  foregroundColor:Colors.green,
                  padding:EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 12
                  ),
                  elevation: 12,
                  shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66)
                  )

              ),



              onPressed: (){}, child: Text('Loging'))
        ],
      ),
      ),
    );
  }
}
