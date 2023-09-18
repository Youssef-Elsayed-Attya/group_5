import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
  final String name;
  ChatScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(name),
      ),
    );
  }
}
