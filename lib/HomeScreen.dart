import 'package:flutter/material.dart';
import 'package:group5/chat.dart';


List<String> names=[
  'ahmed',
  'youssef',
  'ali',
  'reem',
  'ahmed',
  'youssef',
  'ali',
  'reem',
  'ahmed',
  'youssef',
  'ali',
  'reem',
];

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<Widget> Pages=[
    Center(
      child: ListView.separated(itemBuilder: (context, index) => Card(
        elevation: 10,
        child: ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(name: names[index]),));
          },
          leading: FlutterLogo(size: 50),
          title: Text(names[index]),
          subtitle: Text('last massage'),
          trailing: Column(
            children: [
              Text('10:10 pm'),
              CircleAvatar(radius: 10,
              backgroundColor: Colors.green,)
            ],
          ),
        ),
      ), separatorBuilder: (context, index) => SizedBox(
        height: 5,
      ), itemCount: names.length)
    ),
    Center(
      child: Text('setting'),
    ),
  ];
  int Cindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
         onTap: (value) {
           setState(() {
             Cindex=value;

           });
           print(Cindex);
         },
         currentIndex: Cindex,
         items: [
           BottomNavigationBarItem(
             label: 'profiles',
             icon: Icon(Icons.person)
           ),
           BottomNavigationBarItem(
             label: 'settings',
             icon: Icon(Icons.settings)
           )
         ],
       ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.cancel),
        ),
      ),
      body: Pages[Cindex]
    );
  }
}
