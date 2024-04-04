// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_widget_kn_project/subviews/view1.dart';
import 'package:flutter_widget_kn_project/subviews/view2.dart';
import 'package:flutter_widget_kn_project/subviews/view3.dart';
import 'package:flutter_widget_kn_project/subviews/view4.dart';
import 'package:flutter_widget_kn_project/subviews/view5.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class KmBnb02UI extends StatefulWidget {
  const KmBnb02UI({super.key});

  @override
  State<KmBnb02UI> createState() => _KmBnb02UIState();
}

class _KmBnb02UIState extends State<KmBnb02UI> {
  List<Widget> _showView = [
    View1UI(),
    View2UI(),
    View3UI(),
    View4UI(),
    View5UI(),
  ];

  
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'แชร์ KM BNB 02',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.facebook),
            title: Text('facebook'),
            selectedColor: Color.fromARGB(255, 27, 71, 248),
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.google),
            title: Text('google'),
            selectedColor: Color.fromARGB(255, 248, 68, 27),
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.twitter),
            title: Text('twitter'),
            selectedColor: Color.fromARGB(255, 0, 0, 0),
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.line),
            title: Text('line'),
            selectedColor: Color.fromARGB(255, 45, 248, 27),
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.linkedin),
            title: Text('linkedin'),
            selectedColor: Color.fromARGB(255, 71, 172, 254),
            unselectedColor: Colors.grey[400],
          ),
        ],

      ),
    );
  }
}
