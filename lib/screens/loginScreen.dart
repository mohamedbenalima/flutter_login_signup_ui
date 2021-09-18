import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loginapp/widgets.dart/gradiantButtonWidget.dart';
import 'package:loginapp/widgets.dart/inputTextWidget.dart';

import 'signupScreen.dart';

class LoginScreen extends StatefulWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screeHeight = MediaQuery.of(context).size.height;
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    final double containerHeight = 420.0;
    return Container(
      child: Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/background2.png'),
              fit: BoxFit.cover,
            )),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 30.0, left: 25.0, right: 25.0),
                      child: Container(
                        width: screenWidth,
                        height: containerHeight,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 22.0),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Form(
                              key: widget._formKey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15.0,
                                    ),
                                    /** you can use this code if you don't want use InputTextWidget */
                                    // child: Container(
                                    //     child: Material(
                                    //         color: Colors.blueGrey[50],
                                    //         elevation: 5.0,
                                    //         shadowColor: Colors.black,
                                    //         borderRadius:
                                    //             BorderRadius.circular(0.2),
                                    //         child: Padding(
                                    //           padding: const EdgeInsets.only(
                                    //               right: 20.0, left: 15.0),
                                    //           child: TextFormField(
                                    //             //controller: controller,
                                    //             obscureText: false,
                                    //             autofocus: false,
                                    //             decoration: InputDecoration(
                                    //               icon: Icon(
                                    //                 Icons.account_circle,
                                    //                 color: Colors.black,
                                    //                 size:
                                    //                     32.0, /*Color(0xff224597)*/
                                    //               ),
                                    //               labelText: "Email",
                                    //               labelStyle: TextStyle(
                                    //                   color: Colors.black54,
                                    //                   fontSize: 18.0),
                                    //               hintText: '',
                                    //               fillColor:
                                    //                   Colors.blueGrey[50],
                                    //               filled: true,
                                    //               enabledBorder:
                                    //                   InputBorder.none,
                                    //               focusedBorder:
                                    //                   UnderlineInputBorder(
                                    //                 borderSide: BorderSide(
                                    //                     color:
                                    //                         Colors.black54),
                                    //               ),
                                    //               border: InputBorder.none,
                                    //             ),
                                    //             // validator: (String value) {
                                    //             //   if (value.isEmpty) {
                                    //             //     return 'Please enter some text';
                                    //             //   }
                                    //             //   return null;
                                    //             // },
                                    //           ),
                                    //         )))
                                    child: InputTextWidget(
                                      labelText: "Username",
                                      icon: Icons.account_circle,
                                      obscureText: false,
                                      //controller:
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: InputTextWidget(
                                      labelText: "Password",
                                      icon: Icons.lock,
                                      obscureText: true,
                                      //controller:
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 5.0),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Material(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "Forgot your password ?",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            // Container(
                            //   height: 55.0,
                            //   child: ElevatedButton(
                            //     onPressed: () {
                            //       print("hello sign up");
                            //     },
                            //     style: ElevatedButton.styleFrom(
                            //       primary: Colors.white,
                            //       elevation: 0.0,
                            //       minimumSize: Size(screenWidth, 150),
                            //       padding: EdgeInsets.symmetric(horizontal: 16),
                            //       shape: const RoundedRectangleBorder(
                            //         borderRadius:
                            //             BorderRadius.all(Radius.circular(0)),
                            //       ),
                            //     ),
                            //     child: Ink(
                            //       decoration: BoxDecoration(
                            //           boxShadow: <BoxShadow>[
                            //             BoxShadow(
                            //                 color: Color(0xfff49738),
                            //                 offset: const Offset(1.1, 1.1),
                            //                 blurRadius: 10.0),
                            //           ],
                            //           color: Color(0xfff49738),
                            //           borderRadius: BorderRadius.circular(5.0)),
                            //       child: Container(
                            //         alignment: Alignment.center,
                            //         child: Text(
                            //           "Sign In",
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               color: Colors.white, fontSize: 25),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),;
                            GradientButtonWidget(
                                title: "Sign In",
                                controllerEmail: _emailController.text,
                                controllerPwd: _passwordController.text),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 3.0),
                              child: Row(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Material(
                                        child: Text(
                                          //"vous avez deja une compte ?",
                                          "You do not have an account ?",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )),
                                  SizedBox(
                                    width: (screenWidth - 290),
                                  ),
                                  Material(
                                      child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignUpScreen()),
                                      );
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, top: 25.0, right: 15.0),
                              child: Material(
                                child: InkWell(
                                  onTap: () async {
                                    print("I love Tunisia");
                                  },
                                  child: Row(children: [
                                    Container(
                                        width: 45,
                                        height: 45,
                                        child: Image.asset(
                                            "assets/images/google.png")),
                                    Text(
                                      "   Sign in with Google",
                                      style: TextStyle(
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                ),
              ),
            )),
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[50],
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "By creating an account, you agree to our ",
                  style: TextStyle(color: Colors.grey, fontSize: 9),
                ),
                InkWell(
                  child: Text(
                    "Terms of Service",
                    style: TextStyle(color: Colors.blue, fontSize: 9),
                  ),
                  onTap: () => {},
                ),
              ],
            ),
          ),
          elevation: 0,
        ),
      ),
    );
  }
}
