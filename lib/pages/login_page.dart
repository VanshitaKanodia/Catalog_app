import 'package:commercial_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = '';
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      //made it await so that if we come back on this page, the login button convert itself from tick to login
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      //and make the change button as false
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset('images/login_image.png',
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0,),
              Text('Welcome $name',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0, horizontal: 32.0,),
                child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter username',
                          labelText: 'Username',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {

                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter password',
                          labelText: 'Password',
                        ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            }
                            else if(value.length < 6){
                              return "Pass length should be atleast 6";
                            }
                            else {
                              return null;
                            }
                          }
                      ),
                      SizedBox(height: 40.0,),
                      Material(
                        color: context.theme.buttonColor,
                        borderRadius: BorderRadius.circular(
                            changeButton ? 50 : 150),
                        //instead of using Elevated button,produces some effect
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50.0,
                            alignment: Alignment.center,
                            child: changeButton ? Icon(Icons.done,
                              color: Colors.white,
                            )
                                : Text('Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            // decoration: BoxDecoration(
                            //   color: Colors.deepPurple,
                            // ),
                          ),
                        ),
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Text(
                      //     'Login',
                      //   ),
                      //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      // ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
