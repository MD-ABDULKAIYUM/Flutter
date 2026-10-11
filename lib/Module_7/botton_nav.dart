import 'package:first_forject/Module_7/tab_b.dart';
import 'package:flutter/material.dart';

import '../Module_5/Gridv.dart';
import 'Module7Class2.dart';
import 'Module7class3.dart';
import '../Module_6/class-1.dart';
import '../Module_6/class_2.dart';

class botton_nav extends StatefulWidget {
  const botton_nav({super.key});

  @override
  State<botton_nav> createState() => _botton_navState();
}

class _botton_navState extends State<botton_nav> {
  int selectedIndex =0;
  List page =[
    tab_b(),
    Module_6Class_2(),
    Gridv(),
    Module7class3(),
    Module7class2(),


  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: page[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
          onDestinationSelected: (int index){
            setState(() {
              selectedIndex = index;
            });
          },
          destinations:[
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.inbox), label: 'Inbox'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            NavigationDestination(icon: Icon(Icons.contact_page), label: 'Help'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'setting'),

          ]

      ),


    );
  }
}
