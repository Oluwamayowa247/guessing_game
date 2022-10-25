import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class PaintScreen extends StatefulWidget {
  const PaintScreen({super.key});

  @override
  State<PaintScreen> createState() => _PaintScreenState();
}

class _PaintScreenState extends State<PaintScreen> {
  late IO.Socket _socket;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    connect();
  }

  //for socket io connection
  void connect() {
    _socket = IO.io('http://192.168.73.2:3000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    _socket.connect();
    //listen to socket
    _socket.onConnect(((data) {
      print('Sope!');
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
