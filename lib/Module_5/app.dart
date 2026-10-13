


import 'package:first_forject/Module_5/Assignment_5.dart';
import 'package:first_forject/Module_6/class_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Module_7/Assignment_7.dart';
import '../Module_7/Assignment_8.dart';
import '../Module_7/botton_nav.dart';
import 'Basic_Widget_Layout_System.dart';
import 'Gridv.dart';
import '../Module_7/Module7Class2.dart';
import '../Module_7/Module7class3.dart';
import '../Module_6/class_2.dart';
import '../Module_6/class_3.dart';
// import 'class_4.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return MaterialApp(
          title: 'Kaiyum er App',
          home: Assignment8(),
        );

      },
    );
  }
}
