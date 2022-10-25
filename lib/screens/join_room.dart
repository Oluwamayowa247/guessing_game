import 'package:flutter/material.dart';
import 'package:guessgame/widgets/customtextfield.dart';

class JoinRoom extends StatefulWidget {
  const JoinRoom({super.key});

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  late TextEditingController _nameController = TextEditingController();
  late TextEditingController _roomNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          
        }, icon: Icon(
          Icons.arrow_back_ios, color: Colors.black,
        )),
        
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Join Room',
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
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Lets Play !',
            style: TextStyle(fontFamily: 'FuzzyBubbles', fontSize: 20),
          ),
          style:  ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )),
            backgroundColor: MaterialStatePropertyAll(Colors.black),
            minimumSize: MaterialStatePropertyAll(
              Size(150, 50),
            ),
          ),
        ),
      ]),
    );
    ;
  }
}
