import 'package:flutter/material.dart';
class livetest extends StatelessWidget {
  const livetest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Request'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 350,
          child: Stack(

            children: [
              Positioned(
                left: 20,
                right: 20,

                child: Container(
                  width: 300,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left:5,
                        child: Container(
                          height:20 ,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(6)

                          ),
                          child: Text('URGENT',style: TextStyle(
                            color: Colors.red
                          ),),
                        ),
                      ),
                      Positioned(
                          top: 14,
                          right: 10,
                          child: Text('3 Unts')),
                      Positioned(
                          right: 60,
                          top: 10,
                          child: Icon(Icons.bloodtype_sharp,color: Colors.red,)),
                      Positioned(
                        top: 40,
                        left: 10,
                        child: Text('O- Blood Need',style: TextStyle(
                          fontSize: 23,
                        ),),
                      ),
                      Positioned(
                          top: 70,
                          left: 8,
                          child: Icon(Icons.location_pin)),
                      Positioned(
                          top: 70,
                          left: 30,
                          child: Text('Feni Gov Hospotal')),
                      
                      Positioned(
                          bottom: 15,
                          left: 10,
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 100)
                              ),
                              child: Text('View Details'))),
                    ],
                  ),
                ),
              ),


              Positioned(
                left: 20,
                right: 20,
                top: 180,


                child: Container(
                  width: 300,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left:5,
                        child: Container(
                          height:20 ,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(6)

                          ),
                          child: Text('URGENT',style: TextStyle(
                              color: Colors.red
                          ),),
                        ),
                      ),
                      Positioned(
                          top: 14,
                          right: 10,
                          child: Text('2 Unts')),
                      Positioned(
                          right: 60,
                          top: 10,
                          child: Icon(Icons.bloodtype_sharp,color: Colors.red,)),
                      Positioned(
                        top: 40,
                        left: 10,
                        child: Text('O+ Blood Need',style: TextStyle(
                          fontSize: 23,
                        ),),
                      ),
                      Positioned(
                          top: 70,
                          left: 8,
                          child: Icon(Icons.location_pin)),
                      Positioned(
                          top: 70,
                          left: 30,
                          child: Text('Feni Gov Hospotal')),

                      Positioned(
                          bottom: 15,
                          left: 10,
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 100)
                              ),
                              child: Text('View Details'))),
                    ],
                  ),
                ),
              ),

            ],
          )
            ,),

        ],
      ),
    );
  }
}
