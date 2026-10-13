import 'package:flutter/material.dart';
class Assignment8 extends StatelessWidget {
  const Assignment8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Container(
              width: 350,
              height:360 ,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                 Positioned(
                   top: 15,
                   left: 100,


                   child: CircleAvatar(
                     radius: 55,
                     backgroundImage: NetworkImage('https://scontent.fcgp40-1.fna.fbcdn.net/v/t39.30808-1/842235443_1435918515347254_2017798271998981680_n.jpg?stp=c0.0.640.640a_dst-jpg_tt6&cstp=mx640x640&ctp=s200x200&_nc_cat=106&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeFdbPVsd52-gwWrP_7XabZ6LAOkIEf0OKYsA6QgR_Q4pu8Tk07tV8IOfXlZa2b72ss5CSlCPM-x-o9nSbA03_1O&_nc_ohc=DxYAahchfFkQ7kNvwEHTyW3&_nc_oc=Ado8bA7Wfi3FzIapICFk_viafB1KGsA-kQcj2DvPfhfWix27ZJfnJy4DDGiRygpK-Lk&_nc_zt=24&_nc_ht=scontent.fcgp40-1.fna&_nc_gid=5tAn_jaLL85vl02Mss5tUg&_nc_ss=7b2a8&oh=00_AQNn5ZPplxUFHszHWhdH_ccPKcCCDe0lgQnu9fmxjqf3xQ&oe=6AD41410'),

                   ),

                 ),
                  Positioned(
                    left: 86,
                      top: 125,
                      child: Text('Abdul Kaiyum',style:TextStyle(
                        fontSize: 23,
                      ),)),
                  Positioned(
                    top: 154,
                      left: 95,
                      child: Text('Flutter Developer',style: TextStyle(
                        color: Colors.black26
                      ),)),
                  Positioned(
                      bottom: 145,
                      left: 15,
                      child: Text('Passionate about creating user-friendly and \n engaing digital experience',
                  style: TextStyle(

                  ),)),
                  Positioned(
                    bottom: 130,
                    left: 20,
                    child: Container(
                      height: 3,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white60
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 100,
                      left: 30,
                      child: Icon(Icons.email)),
                  Positioned(
                      bottom: 70,
                      left: 30,
                      child: Icon(Icons.phone)),
                  Positioned(
                      bottom: 105,
                      left: 60,
                      child: Text('abdulkaiyum@gmail.com')),
                  Positioned(
                      bottom: 75,
                      left: 60,
                      child: Text('+8801944934****')),
                  Positioned(
                    bottom: 15,
                    left: 70,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),


                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 33,
                          )

                            
                        ),
                        child: Text('Follow')),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 55,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(

                            foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)
                          )
                        ),



                        child: Text('Message')),

                  ),





                ],
              ),
            ),

          ),
          SizedBox(height: 70,),
          Row(
           
             children: [
               SizedBox(width: 20,),
               Card(
                 child: Container(
                   height: 300,
                   width: 150,
                   decoration: BoxDecoration(
                     color: Colors.white
                   ),
                   child: Stack(
                     children: [
                       Positioned(
                         top: 10,
                         left: 10,
                         right: 10,
                         child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2hQ7iRWfEC_KNTKmN-yLJCb_aNvGuQbyLTgL3ZRqh9g&s=10',
                         width: 130,
                         height: 130,
                           fit: BoxFit.cover,
                         ),
                       ),
                       Positioned(
                           bottom: 135,
                           left: 17,
                           child: Text('iphone 17 Pro',
                           style: TextStyle(
                             fontSize: 17,
                             fontWeight: FontWeight.bold,
                 
                           ),)),
                       Positioned(
                           bottom: 70,
                           left: 12,
                           child: Text('Explore the latest \n Flagship iPhones &\n Accessories',style: TextStyle(
                             color: Colors.black45
                           ),)),
                       Positioned(
                           bottom: 15,
                           left: 10,
                           child: ElevatedButton(onPressed: (){},
                               style: ElevatedButton.styleFrom(
                                 foregroundColor: Colors.blue[700],
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(2)
                                 ),
                                 padding: EdgeInsets.symmetric(
                                   horizontal: 30
                                 )
                               ),
                               child: Text('View More'))),
                 
                 
                     ],
                   ),
                 ),
               ),
               SizedBox(width: 15,),
           
           
               Card(
                 child: Container(
                   height: 300,
                   width: 150,
                   decoration: BoxDecoration(
                       color: Colors.white
                   ),
                   child: Stack(
                     children: [
                       Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSBo25Mbqa0CrsyCP8NthOCC6JMFY8u8e5RQBwSp460w&s',
                 
                       ),
                       Positioned(
                           top: 130,
                           left: 17,
                           child: Text('MacBook Pro 14 ',style: TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.bold,
                           ),)),
                       Positioned(
                           bottom: 70,
                           left: 15,
                           child: Text('Mind-blowing \nperformance with \nM-series chips',style: TextStyle(
                             color: Colors.black45,
                           ),)),
                       Positioned(
                           bottom: 15,
                           left: 10,
                           child: ElevatedButton(onPressed: (){},
                               style: ElevatedButton.styleFrom(
                                   foregroundColor: Colors.blue[700],
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(2)
                                   ),
                                   padding: EdgeInsets.symmetric(
                                       horizontal: 30
                                   )
                               ),
                               child: Text('View More'))),
                 
                 
                 
                 
                     ],
                   ),
                 ),
               ),
             ],
           ),

        ],

      ),
    );
  }
}
