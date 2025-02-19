// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_kn_project/subviews/view1.dart';
import 'package:flutter_widget_kn_project/subviews/view2.dart';
import 'package:flutter_widget_kn_project/subviews/view3.dart';
import 'package:flutter_widget_kn_project/subviews/view4.dart';
import 'package:flutter_widget_kn_project/subviews/view5.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmBnb03UI extends StatefulWidget {
  const KmBnb03UI({super.key});

  @override
  State<KmBnb03UI> createState() => _KmBnb03UIState();
}

class _KmBnb03UIState extends State<KmBnb03UI> {
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
          'แชร์ KM BNB 03',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.green,
        activeColor: Colors.white,
        
        initialActiveIndex: 2,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          TabItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
              color: Color.fromARGB(255, 27, 71, 248),
            ),
            title: 'facebook',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.google,
              color: Color.fromARGB(255, 248, 68, 27),
            ),
            title: 'google',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.twitter,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: 'twitter',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.line,
              color: Color.fromARGB(255, 45, 248, 27),
            ),
            title: 'line',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.linkedin,
              color: Color.fromARGB(255, 71, 172, 254),
            ),
            title: 'linkedin',
          ),
        ],
      ),
    );
  }
}
