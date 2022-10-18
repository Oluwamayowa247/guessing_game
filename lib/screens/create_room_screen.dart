import 'package:flutter/material.dart';
import 'package:guessgame/widgets/customtextfield.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  late TextEditingController _nameController = TextEditingController();
  late TextEditingController _roomNameController = TextEditingController();
  late String _maxRoundsValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Create Room',
            style: TextStyle(
                fontFamily: 'FuzzyBubbles', color: Colors.black, fontSize: 30),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
                controller: _nameController, customHintText: 'Enter Your Name'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
                controller: _roomNameController,
                customHintText: 'Enter Your Room Name'),
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButton(
              focusColor: Color(0xffF5F6FA),
              items: <String>['2', '4', '6', '8']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                  .toList(),
              hint: Text(
                'Select Max Rounds',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String? value) {
                setState(() {
                  _maxRoundsValue = value!;
                });
              }),
          Text(_maxRoundsValue),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
