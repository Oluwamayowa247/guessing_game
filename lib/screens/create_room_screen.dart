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
  String? _maxRoundsValue = 0.toString();
  late String? _roomSize = 0.toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF5F6FA),
        leading: IconButton(
            onPressed: ()=> Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Create Room',
          style: TextStyle(
              fontFamily: 'FuzzyBubbles', color: Colors.black, fontSize: 30),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextField(
              controller: _nameController, customHintText: 'Enter Your Name'),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextField(
              controller: _roomNameController,
              customHintText: 'Enter Your Room Name'),
        ),
        const SizedBox(
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
            hint: const Text(
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
        Text(_maxRoundsValue!),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        DropdownButton(
            focusColor: Color(0xffF5F6FA),
            items: <String>['2', '4', '6', '8', '10']
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
              'Select Room Size',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            onChanged: (String? value) {
              setState(() {
                _roomSize = value!;
              });
            }),
        Text(_roomSize!),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Lets Play ! 😎 ',
            style: TextStyle(fontFamily: 'FuzzyBubbles', fontSize: 20),
          ),
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black),
            minimumSize: MaterialStatePropertyAll(
              Size(150, 50),
            ),
          ),
        ),
      ]),
    );
  }
}
