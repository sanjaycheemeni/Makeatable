import 'dart:io';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:textfield_datepicker/textfield_timePicker.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final controller;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    // TextEditingController tc = controller;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        keyboardType: hintText == "Mobile Number"
            ? TextInputType.phone
            : TextInputType.name,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

class LocationInputText extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final controller;

  const LocationInputText({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    var location_list = ['Calicut', 'Kochi', 'Kannur'];

    return Container(
        height: 59,
        decoration: BoxDecoration(
            color: Colors.white,
            border: null,
            borderRadius: BorderRadius.circular(5)),
        margin: EdgeInsets.symmetric(horizontal: 25),
        padding: EdgeInsets.only(left: 15, top: 5),
        child: DropdownSearch<String>(
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Location',
            ),
          ),

          items: location_list,

          // selectedItem: 'Choose Location',
        ));
  }
}

class TimePickerText extends StatelessWidget {
  final String hintText;
  final controller;

  const TimePickerText({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.only(left: 0, top: 20),
      height: 59,
      decoration: BoxDecoration(
          color: Colors.white,
          border: null,
          borderRadius: BorderRadius.circular(5)),
      child: TextfieldTimePicker(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade500),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white,
            filled: true,
          ),
          textfieldDateAndTimePickerController: controller,
          cupertinoDatePickerBackgroundColor: Colors.amber,
          cupertinoDateInitialDateTime: DateTime(2023),
          materialInitialTime: TimeOfDay.now()),
    );
  }
}

class RoomTypeInput extends StatelessWidget {
  final String hintText;
  final controller;

  const RoomTypeInput({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 59,
        decoration: BoxDecoration(
            color: Colors.white,
            border: null,
            borderRadius: BorderRadius.circular(5)),
        margin: EdgeInsets.symmetric(horizontal: 25),
        padding: EdgeInsets.only(left: 15, top: 5),
        child: DropdownSearch<String>(
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
                border: InputBorder.none, hintText: 'Room type'),
          ),
          items: ['Family AC', 'Family Non-AC', ''],

          // selectedItem: 'Choose Location',
        ));
  }
}

class SeatTextfield extends StatelessWidget {
  final String hintText;
  final controller;

  const SeatTextfield({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    // TextEditingController tc = controller;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          FilteringTextInputFormatter.digitsOnly
        ],
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

class Imagepicker extends StatefulWidget {
  const Imagepicker({super.key});

  @override
  State<Imagepicker> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
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
            ? Image.file(_image!, fit: BoxFit.fill)
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.upload,
                    size: 40,
                    color: mIconInactive,
                  ),
                  Text(
                    'Choose image',
                    style: TextStyle(fontSize: 14, color: mIconInactive),
                  )
                ],
              ),
        margin: EdgeInsets.symmetric(horizontal: 25),
        height: 190,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 12,
            color: Color.fromRGBO(0, 0, 0, 0.16),
          )
        ], borderRadius: BorderRadius.circular(8), color: Colors.white),
      ),
    );
  }
}

class NumberInputField extends StatelessWidget {
  final hint;
  final tc;
  final value;
  const NumberInputField(
      {required this.tc, required this.hint, super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    // TextEditingController tc = controller;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          FilteringTextInputFormatter.digitsOnly
        ],
        controller: tc,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

class AddFoodImagePicker extends StatefulWidget {
  const AddFoodImagePicker({super.key});

  @override
  State<AddFoodImagePicker> createState() => _AddFoodImagePickerState();
}

class _AddFoodImagePickerState extends State<AddFoodImagePicker> {
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
            : Text(
                'Choose Image',
                style: TextStyle(color: Colors.grey.shade500),
              ),
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
