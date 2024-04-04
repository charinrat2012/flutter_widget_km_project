// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, unused_field, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class KmDropdownUI extends StatefulWidget {
  const KmDropdownUI({super.key});

  @override
  State<KmDropdownUI> createState() => _KmDropdownUIState();
}

class _KmDropdownUIState extends State<KmDropdownUI> {
  List<String> _plList = [
    'JAVA',
    'Python',
    'C#',
    'Go',
    'Dart',
  ];

  String _programing = 'JAVA';

  //---------------------------------------------------
  List<String> _uList = [
    'SAU',
    'TU',
    'CMU',
    'CHULA',
    'MU',
  ];

  String _university = 'CMU';

  //----------------------------------------------------
  List<String> _fList = [
    'Pizza',
    'KFC',
    'Amazon',
    'Fuji',
  ];

  String _food = 'Pizza';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'แชร์ KM DropDown',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: _programing,
              onChanged: (paramValue) {
                setState(() {
                  _programing = paramValue!;
                });
              },
              items: _plList
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              isExpanded: true,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _university,
                    onChanged: (paramValue) {
                      setState(() {
                        _university = paramValue!;
                      });
                    },
                    items: _uList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.holiday_village,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(e),
                                ],
                              ),
                            ))
                        .toList(),
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 120, 110),
                    border: Border.all(
                      color: Color.fromARGB(255, 154, 10, 0),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _food,
                    onChanged: (paramValue) {
                      setState(() {
                        _food = paramValue!;
                      });
                    },
                    items: _fList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(e),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('<=>'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.food_bank,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10),
                    dropdownColor: Color.fromARGB(255, 255, 120, 110),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
