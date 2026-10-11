import 'package:flutter/material.dart';
class Module7class2 extends StatelessWidget {
  const Module7class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(
          color: Colors.white70
        ),),
        backgroundColor: Colors.black,

      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: Colors.green,
                    
        
        
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 5
                    ),
                    BoxShadow(
                        offset: Offset(5, 0),
                        color: Colors.red,
                        blurRadius: 10,
                    ),
                  ],

                ),
                height: 100,
                width: 150,
        
                child: Text('Mediplus'),
              ),
            ),
            Stack(
              // alignment: Alignment.center,
        
              children: [
        
                Container(
                  width: 300,
                  height: 250,
                  color: Colors.pink,
                ),
                Positioned(
                  top: 20,
                  bottom: 20,
                  left: 20,
                  child: Container(
                    width: 250,
                    height: 200,
                    color: Colors.purple,
                  ),
                ),
                Container(
                  width: 200,
                  height: 150,
                  color: Colors.lightBlue,
                ),
              ],
            ),


            SizedBox(height: 50,),
            Card(
              child: Container(
                width: 300,
                height: 350,
                      
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 15,
                        left: 15,
                        right: 15
              
                        ,child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA-eYL9muLGQyevrvkVDEiKa5rCeSzb6ilgjSJLudtxA&s=10')),
              
              
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        child: Text('20% OFF'),
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                        right: 10,
                        child: Icon(Icons.favorite_border,size: 30,color: Colors.red,)),
                    Positioned(
                      bottom: 35,
                      left: 14,
              
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hoco Hedphone',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                      
                          ),),
              
                        ],
                      ),
                    ),
              
                    SizedBox(height: 20,),
              
                    Positioned(
                      bottom: 4,
                      left: 14,
                      right: 20,
                      child: Row(
                        children: [
                          Text('৳1499',style: TextStyle(
                            fontSize: 22,
                            color: Colors.red,
                            fontWeight: FontWeight.bold
              
                          ),),
              
                          SizedBox(width: 8,),
              
                          Text('1999',style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
              
                          ),),
                          Spacer(),
              
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(15),
              
              
                            ),
                            child: Icon(Icons.shopping_bag_outlined,
                            color: Colors.white,
                            size: 30,),
                          )
              
                        ],
                      ),
                    ),
              
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
