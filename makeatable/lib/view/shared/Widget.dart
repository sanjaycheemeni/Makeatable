import 'package:flutter/material.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/auth_module/widgets/my_textfield.dart';

import '../../util/constants/color_constants.dart';

//search

class searchbar extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const searchbar({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color.fromARGB(255, 247, 247, 247)),
            ),
            /* prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Icon(
              Icons.arrow_back_ios,
              ),
            ),*/
            suffixIcon: Icon(
              Icons.search,
              color: Colors.red,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: const Color.fromARGB(255, 255, 255, 255),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
//

class FoodCard extends StatelessWidget {
  final isActive;
  final foodName;
  final foodPrice;
  final foodImage;
  const FoodCard(
      {required bool this.isActive,
      required String this.foodImage,
      required String this.foodName,
      required String this.foodPrice,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isActive ? 1 : .5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => FoodUpdateDialog(
                value: 'null',
                isActive: isActive,
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                    child: Image.network(
                      foodImage,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        'Rs ' + foodPrice,
                        style: TextStyle(color: mIconInactive, fontSize: 15),
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

class FoodUpdateDialog extends StatefulWidget {
  final value;
  final isActive;
  const FoodUpdateDialog(
      {required bool this.isActive, required String this.value, super.key});

  @override
  State<FoodUpdateDialog> createState() => _FoodUpdateDialogState();
}

class _FoodUpdateDialogState extends State<FoodUpdateDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      height: 390 + MediaQuery.of(context).viewInsets.bottom + 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 233, 233, 233)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Update Food',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: mRed),
          ),
          SizedBox(
            height: 35,
          ),
          MyTextField(
              controller: TextEditingController(),
              hintText: 'Food name',
              obscureText: false),
          SizedBox(
            height: 20,
          ),
          NumberInputField(
              tc: TextEditingController(),
              hint: 'Food price',
              value: widget.value),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Availabilty',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: mBlack),
              ),
              Switch(
                value: widget.isActive,
                onChanged: (value) {
                  setState(() {
                    value = !value;
                  });
                },
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          MyButton(onTap: () {}, clr: mRed, text: 'Save')
        ],
      ),
    );
  }
}

class Addfood extends StatefulWidget {
  final value;
  Addfood({required String this.value, super.key});

  @override
  State<Addfood> createState() => _AddfoodState();
}

class _AddfoodState extends State<Addfood> {
  @override
  Widget build(BuildContext context) {
    var val = true;

    return Container(
      height: 500 + MediaQuery.of(context).viewInsets.bottom + 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 233, 233, 233)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Add Food',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: mRed),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: AddFoodImagePicker(),
          ),
          MyTextField(
              controller: TextEditingController(),
              hintText: 'Food name',
              obscureText: false),
          SizedBox(
            height: 20,
          ),
          NumberInputField(
              tc: TextEditingController(),
              hint: 'Food price',
              value: widget.value),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Availabilty',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: mBlack),
              ),
              Switch(
                value: val,
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                  print('done' + value.toString() + val.toString());
                },
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          MyButton(onTap: () {}, clr: mRed, text: 'Add')
        ],
      ),
    );
  }
}
