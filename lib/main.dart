

import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
import 'package:book_ticket/screen/buttom_bar.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primaryColor: primary
      ),
      home: const BottomBar(),
    );
  }
}

