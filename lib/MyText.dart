import 'package:flutter/material.dart';


class MyText extends StatelessWidget{
  final String data;
  MyText({required this.data });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      child: TextButton(
        onPressed: (){},
        child: Text(data,style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30,
        ),),
      ),
    );
  }
  
}