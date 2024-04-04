// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_widget_kn_project/subviews/view1.dart';
import 'package:flutter_widget_kn_project/subviews/view2.dart';
import 'package:flutter_widget_kn_project/subviews/view3.dart';
import 'package:flutter_widget_kn_project/subviews/view4.dart';
import 'package:flutter_widget_kn_project/subviews/view5.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmBnb01UI extends StatefulWidget {
  const KmBnb01UI({super.key});

  @override
  State<KmBnb01UI> createState() => _KmBnb01UIState();
}

class _KmBnb01UIState extends State<KmBnb01UI> {
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
          'แชร์ KM BNB 01',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.white,
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.facebook),
            label: 'facebook',
            backgroundColor: Color.fromARGB(255, 27, 71, 248),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.google),
            label: 'google',
            backgroundColor: Color.fromARGB(255, 248, 68, 27),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.twitter),
            label: 'twitter',
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.line),
            label: 'line',
            backgroundColor: Color.fromARGB(255, 45, 248, 27),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.linkedin),
            label: 'linkedin',
            backgroundColor: Color.fromARGB(255, 71, 172, 254),
          ),
        ],

      ),
    );
  }
}
