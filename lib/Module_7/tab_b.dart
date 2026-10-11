import 'package:flutter/material.dart';

class tab_b extends StatefulWidget {
  const tab_b({super.key});

  @override
  State<tab_b> createState() => _tab_bState();
}

class _tab_bState extends State<tab_b> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('KAIYUM'),
          bottom: TabBar(
              indicator: BoxDecoration(
                color: Colors.lightGreen.shade200,
                borderRadius: BorderRadius.circular(15)
                    
              ),
              indicatorPadding: EdgeInsets.all(1),
              labelColor: Colors.lightGreen,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 15,
              ),

              tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',

            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'favarite',

            ),
            Tab(
              icon: Icon(Icons.help),
              text: 'Help',

            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Stting',

            ),



          ]),

        ),
      ),
    );
  }
}
