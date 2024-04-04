// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, unused_field, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings, sort_child_properties_last

import "dart:io";
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class KmCameraGalleryUI extends StatefulWidget {
  const KmCameraGalleryUI({super.key});

  @override
  State<KmCameraGalleryUI> createState() => _KmDropdownUIState();
}

class _KmDropdownUIState extends State<KmCameraGalleryUI> {
//เก็บรูปถ่าย
  File? _imageFromCamera;

//เก็บรูปที่เลือก
  File? _imageFromGallery;

//เมดธอดถ่ายรูป
  Future getImageFromCamera() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
    );
//ตรวจว่ามีรูปจากการถ่ายหรือยัง
    if (image == null) return;

    setState(() {
      _imageFromCamera = File(image.path);
    });
  }

//เมดธอดถ่เลือกรูป
  Future getImageFromGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//ตรวจว่ามีรูปจากการเลือกหรือยัง
    if (image == null) return;

    setState(() {
      _imageFromGallery = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'แชร์ KM CameraGallery',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: _imageFromCamera == null
                  ? Image.network(
                      'https://cdn.pixabay.com/photo/2023/11/23/20/40/ocean-8408693_1280.jpg',
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.2,
                      fit: BoxFit.cover,
                    )
                  : Image.file(
                      _imageFromCamera!,
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.2,
                      fit: BoxFit.cover,
                    ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ElevatedButton(
              onPressed: () {
                getImageFromCamera();
              },
              child: Text(
                'Take Photo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 8, 74, 11),
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: _imageFromGallery == null
                  ? Image.network(
                      'https://cdn.pixabay.com/photo/2023/04/26/15/51/lighthouse-7952696_1280.jpg',
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.2,
                      fit: BoxFit.cover,
                    )
                  : Image.file(
                      _imageFromGallery!,
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.2,
                      fit: BoxFit.cover,
                    ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ElevatedButton(
              onPressed: () {
                getImageFromGallery();
              },
              child: Text(
                'Open Gallery',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 8, 74, 11),
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
