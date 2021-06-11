import 'package:flutter/material.dart';
import 'package:flutter_application_1/bg_image.dart';
//import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/utils/Constants.dart';
class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController =TextEditingController();
  final passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body:Stack(
        fit:StackFit.expand,
        children: <Widget>[
          Bgimage(),
          Center(
            child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[ 
                        TextFormField(
                          decoration:InputDecoration(hintText: "Enter username",labelText: "Username")),
                          SizedBox(
                            height:20,
                          ),
                          TextFormField(
                            obscureText: true,
                          decoration:InputDecoration(hintText: "Enter Password",labelText: "Password",)
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:20,
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: (){
                        Constants.prefs.setBool("loggedIn", true);
                        Navigator.pushReplacementNamed(context,"/home");
                      },
                      child: Text("SignIN"),
                      color:Colors.purple,
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
        ),
      ),
          ),
        ],
      )
    );
  }
}