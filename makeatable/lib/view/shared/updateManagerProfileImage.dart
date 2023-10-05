import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ManagerProfileImagePicker extends StatefulWidget {
  const ManagerProfileImagePicker({super.key});

  @override
  State<ManagerProfileImagePicker> createState() =>
      _ManagerProfileImagePickerState();
}

class _ManagerProfileImagePickerState extends State<ManagerProfileImagePicker> {
  File? _image;

  // This is the image picker
  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        _openImagePicker();
      },
      child: Container(
        alignment: Alignment.center,
        child: _image != null
            ? Image.file(_image!, fit: BoxFit.contain)
            : Image.asset('images/img.png'),
        height: 150,
        width: 150,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 202, 202, 202),
              spreadRadius: 1,
              blurRadius: 4)
        ], borderRadius: BorderRadius.circular(8), color: Colors.white),
      ),
    );
  }
}
