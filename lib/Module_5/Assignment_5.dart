import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text('My Profile'),
        actions: [
          Icon(
            Icons.add,

          ),
          SizedBox(width: 15,),
          Icon(
            Icons.settings,

          ),
          SizedBox(width: 15,),
          Icon(
            Icons.phone,
          )
        ],


      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIVkwpirV0BOos44j35OmmEb909MrPgxp75aNMRXinStvEbfwSMj9OX7zZ&s=10',

              ),

            ),
            SizedBox(height: 20,),

            CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTobmrL1_7YantTv4mnoCqbneppZjM3Hj3AM9S7_9DfWSJZCDqNvB8fwVU&s=10',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
