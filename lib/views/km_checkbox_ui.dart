// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmCheckboxUI extends StatefulWidget {
  const KmCheckboxUI({super.key});

  @override
  State<KmCheckboxUI> createState() => _KmCheckboxUIState();
}

class _KmCheckboxUIState extends State<KmCheckboxUI> {
  bool _chk01 = false;
  bool _chk02 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'แชร์ KM Checkbox',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              onChanged: (paramValue) {
                setState(() {
                  _chk01 = paramValue!;
                });
              },
              value: _chk01,
              checkColor: Colors.red,
              activeColor: Colors.yellow,
              hoverColor: Colors.blue,
              side: BorderSide(
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CheckboxListTile(
              onChanged: (paramValue) {
                setState(() {
                  _chk02 = paramValue!;
                });
              },
              value: _chk02,
              title: Text(
                'JAVA',
              ),
              subtitle: Text(
                'Programing',
              ),
              secondary: Icon(
                FontAwesomeIcons.java,
                color: Colors.red,
              ),
              controlAffinity: ListTileControlAffinity.trailing, 
              activeColor: Colors.orange,
              checkColor: Colors.purple,
              side: BorderSide(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
