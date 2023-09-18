import 'package:flutter/material.dart';
import 'package:group5/HomeScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  int counter=0;
  bool show=false;

  TextEditingController EmailController=TextEditingController();
  TextEditingController PassController=TextEditingController();
  GlobalKey<FormState> Gkey=GlobalKey();
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3,0.7],
                  colors: [
                    Colors.deepPurpleAccent.shade100,
                    Colors.deepPurpleAccent
                  ]
              )
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/user.png'),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 2,
                        blurRadius: 10
                    )]
                ),
                height: 400,
                width: 300,
                child: Form(
                  key:Gkey ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Sign in',style: TextStyle(fontSize: 25,color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w700),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'you should enter an Email';
                            }else if (!value.contains('@')){
                              return 'you should enter a valid email';
                            }else return null;

                          },
                          controller: EmailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    width: 4,
                                    color: Colors.deepPurple
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            suffixIcon:Icon(Icons.person) ,
                            hintText: 'enter your email',

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'you should enter a password';
                            }else if (value.length<6){
                              return 'password >6 ';
                            }else return null;

                          },
                          enabled: true,
                          controller: PassController,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            print(value);
                          },
                          obscureText: show,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              hintText: 'enter a password',
                              suffixIcon: IconButton(
                                  onPressed:() {
                                    setState(() {
                                      show = !show;

                                    });
                                  },
                                  icon: Icon(Icons.lock))
                          ),
                        ),
                      ),
                      MaterialButton(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        color: Colors.deepPurpleAccent,
                        height: 50,
                        minWidth: 200,
                        onPressed: (){

                          if(Gkey.currentState!.validate()){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                         }
                        } ,child: Text('Sign in',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an Account ? '),
                          TextButton(onPressed: (){}, child: Text('Sign Up',style: TextStyle(color: Colors.blueAccent),))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}
