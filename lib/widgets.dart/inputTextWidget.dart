import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool obscureText;
  //final controller;
  const InputTextWidget({
    Key? key,
    required this.labelText,
    required this.icon,
    required this.obscureText,
    // @required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        child: Material(
          color: Colors.blueGrey[50],
          elevation: 5.0,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.circular(0.2),
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 15.0),
            child: TextFormField(
              //controller: controller,
              obscureText: obscureText,
              autofocus: false,
              decoration: InputDecoration(
                icon: Icon(
                  icon,
                  color: Colors.black,
                  size: 32.0, /*Color(0xff224597)*/
                ),
                labelText: labelText,
                labelStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
                hintText: '',
                fillColor: Colors.blueGrey[50],
                filled: true,
                enabledBorder: InputBorder.none,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
                border: InputBorder.none,
              ),
              // validator: (String value) {
              //   if (value.isEmpty) {
              //     return 'Please enter some text';
              //   }
              //   return null;
              // },
            ),
          ),
        ),
      ),
    );
  }
}
