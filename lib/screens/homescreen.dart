import 'package:flutter/material.dart';
import 'package:guessgame/screens/create_room_screen.dart';
import 'package:guessgame/screens/join_room.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Create/Join a room to play',
              style: TextStyle(
                  fontFamily: 'FuzzyBubbles',
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize: MaterialStatePropertyAll(Size(150, 50))),
                    onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CreateRoomScreen(),
                          ),
                        ),
                    child: const Text(
                      'Create',
                      style:
                          TextStyle(fontFamily: 'FuzzyBubbles', fontSize: 20),
                    )),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize: MaterialStatePropertyAll(Size(150, 50))),
                    onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JoinRoom(),
                          ),
                        ),
                    child: const Text(
                      'Join',
                      style:
                          TextStyle(fontFamily: 'FuzzyBubbles', fontSize: 20),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
