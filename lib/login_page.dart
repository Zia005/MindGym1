import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3c8ce5),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0,bottom: 60),
            child: Center(
              child: Text("Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Verdana"
                ),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF6ca8f1),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Enter Your Username",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                        ),
                        prefixIcon: Icon(Icons.person,color: Colors.white,),
                        contentPadding: EdgeInsets.all(5),
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF6ca8f1),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Enter Your Password",
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 17
                        ),
                        prefixIcon: Icon(Icons.lock,color: Colors.white,),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
