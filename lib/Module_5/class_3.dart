import 'package:flutter/material.dart';
class Module_6Class_3 extends StatelessWidget {
  const Module_6Class_3({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController PhoneController =TextEditingController();
    TextEditingController PassWordController =TextEditingController();
    final _FormKey =GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Module6Class1"),
        backgroundColor:Colors.deepOrange,

      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: PhoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Your Phone Number',
                hintStyle: TextStyle(
                  color: Colors.black45,

                ),
                helperText: 'Phone',
                helperStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.blueAccent,
                ),
                labelText: 'Phone',
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.lightGreen,
                ),
                prefixIcon: Icon(Icons.phone,color: Colors.teal,),
                suffixIcon: Icon(Icons.check_circle,color: Colors.green,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),

            ),
            SizedBox(height: 20,),

            TextField(
              controller: PassWordController,
              obscureText: true,
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
                  suffixIcon: Icon(Icons.check_circle,color: Colors.green,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),

            ),
            ElevatedButton(onPressed: (){

              print(PhoneController.text);
              print(PassWordController.text);
            }, child: Text('Submit')),
            Form(
              key: _FormKey,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  TextFormField(
                    validator: (value){
                      if(value==null || value.isEmpty)
                        {
                          return 'Please Inter The phone Number';
                        }
                      else if(value.length != 11){
                        return 'Enter The Valid Phone Number';

                      }
                      else{
                        return null;
                      }
                    },
                    controller: PhoneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Phone Number',
                        hintStyle: TextStyle(
                          color: Colors.black45,

                        ),
                        helperText: 'Phone',
                        helperStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.blueAccent,
                        ),
                        labelText: 'Phone',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.lightGreen,
                        ),
                        prefixIcon: Icon(Icons.phone,color: Colors.teal,),
                        suffixIcon: Icon(Icons.check_circle,color: Colors.green,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),

                  ),
                  SizedBox(height: 20,),

                  TextFormField(
                    validator: (value){
                      if(value==null || value.isEmpty)
                      {
                        return 'Please Inter The Password ';
                      }
                      else if(value.length < 7){
                        return 'Password min 8 char';

                      }
                      else{
                        return null;
                      }

                    },
                    controller: PassWordController,
                    obscureText: true,
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
                        suffixIcon: Icon(Icons.check_circle,color: Colors.green,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),

                  ),
                  ElevatedButton(onPressed: (){

                    if(_FormKey.currentState!.validate()){

                    }
                  }, child: Text('Submit'))
                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}
