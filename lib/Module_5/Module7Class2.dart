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
            SizedBox(height: 30,),
            Container(
              width: 300,
              height: 300,
        
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Image.network('data:image/jpeg;base64,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'),
        
                  Container(
                    child: Text('20% OFF'),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    top: 10,
                      right: 10,
                      child: Icon(Icons.favorite_border,size: 30,)),
                  Positioned(
                    bottom: 10,
                    left: 5,
        
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hoco Hedphone',style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
        
                        ),),
                        Text('1499 tk',style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
        
                        ),),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
