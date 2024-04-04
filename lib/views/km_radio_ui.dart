// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmRadioUI extends StatefulWidget {
  const KmRadioUI({super.key});

  @override
  State<KmRadioUI> createState() => _KmRadioUIState();
}

class _KmRadioUIState extends State<KmRadioUI> {
  int pl = 2;
  String fd = 'Pizza', major = 'DTI';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'แชร์ KM Radio',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 1,
                  groupValue: pl,
                  onChanged: (paramValue) {
                    setState(() {
                      pl = paramValue!;
                    });
                  },
                ),
                Text(
                  'python',
                ),
                Radio(
                  value: 2,
                  groupValue: pl,
                  onChanged: (paramValue) {
                    setState(() {
                      pl = paramValue!;
                    });
                  },
                ),
                Text(
                  'JAVA',
                ),
                Radio(
                  value: 3,
                  groupValue: pl,
                  onChanged: (paramValue) {
                    setState(() {
                      pl = paramValue!;
                    });
                  },
                ),
                Text(
                  'C#',
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Radio(
                      value: 'Pizza',
                      groupValue: fd,
                      onChanged: (paramValue) {
                        setState(() {
                          fd = paramValue!;
                        });
                      },
                    ),
                    Text(
                      'Pizza',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'KFC',
                      groupValue: fd,
                      onChanged: (paramValue) {
                        setState(() {
                          fd = paramValue!;
                        });
                      },
                    ),
                    Text(
                      'KFC',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Amazon',
                      groupValue: fd,
                      onChanged: (paramValue) {
                        setState(() {
                          fd = paramValue!;
                        });
                      },
                    ),
                    Text(
                      'Amazon',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Fuji',
                      groupValue: fd,
                      onChanged: (paramValue) {
                        setState(() {
                          fd = paramValue!;
                        });
                      },
                      activeColor: Colors.red,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.orange),
                    ),
                    Text(
                      'Fuji',
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                RadioListTile(
                  value: 'DTI',
                  groupValue: major,
                  onChanged: (paramValue) {
                    setState(() {
                      major = paramValue!;
                    });
                  },
                  title: Text(
                    'สาขา DTI',
                  ),
                  subtitle: Text(
                    'Technology and Innovation',
                  ),
                  secondary: Icon(
                    FontAwesomeIcons.facebook,
                  ),
                ),
                RadioListTile(
                  value: 'DM',
                  groupValue: major,
                  onChanged: (paramValue) {
                    setState(() {
                      major = paramValue!;
                    });
                  },
                  title: Text(
                    'สาขา DM',
                  ),
                  subtitle: Text(
                    'Digital Media',
                  ),
                  secondary: Image.asset(
                    'assets/images/logo01.png',
                  ),
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.orange),
                //controlAffinity: ListTileControlAffinity.trailing,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
