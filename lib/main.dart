//drawer, end drawer,
//Stateful
//TextFormField and form
// Navigation and pass Data
//bottomNavigationBar
//listView and card


import 'package:flutter/material.dart';
import 'package:group5/HomeScreen.dart';
import 'package:group5/LoginScreen.dart';
import 'package:group5/MyText.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );

  }
}





















































//
// Scaffold(
// drawer: Drawer(
// child: Column(
// children: [
// DrawerHeader(child: Text('Drawer Head'),
// ),
// MyText(data: 'setting'),
// MyText(data: 'profile'),
// MyText(data: 'info'),
//
// ],
// ),
// width: 200,
// ),
//
// body: Container(
// padding: EdgeInsets.symmetric(vertical: 75),
// decoration: BoxDecoration(
// gradient: LinearGradient(
// colors: [Colors.deepPurple.shade200,Colors.deepPurpleAccent],
// stops: [0.2,0.7],
// begin: Alignment.topLeft,
// end: Alignment.bottomRight
// )
// ),
//
// width: double.infinity,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.center,
//
// children:[
// CircleAvatar(
// backgroundImage: AssetImage('images/user.png'),
// radius: 60,
// ),
// Container(
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(25),
// boxShadow: [BoxShadow(
// color: Colors.black26,
// blurRadius: 10,
// spreadRadius: 2
// )]
//
// ),
// height: 400,
// width: 300,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Text('Sign In',style: TextStyle(fontSize: 30,color: Colors.deepPurple,fontWeight: FontWeight.w700)),
// TextFormField(),
// TextFormField(),
// MaterialButton(
// height: 50,
// minWidth: 200,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(15)
// ),
// elevation: 10,
// onPressed: (){}, color: Colors.deepPurple,child: Text('Sign In',style: TextStyle(fontSize: 20,color: Colors.white),),),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text('dont\'t have an account ? '),
// GestureDetector(
// onTap: (){
// },child: Text('Sign Up',style: TextStyle(color: Colors.blueAccent),))
// ],
// ),
// ],
// ),
// ),
//
// ],
//
// ),
// ),
// ),