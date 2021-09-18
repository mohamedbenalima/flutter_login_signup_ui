import 'package:flutter/material.dart';

class GradientButtonWidget extends StatelessWidget {
  //final nextScreen;
  final service;
  final title;
  final controllerEmail;
  final controllerPwd;
  GradientButtonWidget(
      {Key? key,
      // @required this.nextScreen,
      this.service,
      @required this.title,
      @required this.controllerEmail,
      @required this.controllerPwd})
      : super(key: key);

  //#E7EC1D  couleur jaune
  //#27A536 vert

  @override
  //final auth = FirebaseAuth.instance;
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 55.0,
      child: ElevatedButton(
        onPressed: () {
          print("controller Email = $controllerEmail ");
          print("controller pwd = $controllerPwd ");

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => nextScreen),
          // );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 0.0,
          minimumSize: Size(screenWidth, 150),
          padding: EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(
                        0xfff49738), //DesignCourseAppTheme.nearlyBlue.withOpacity(0.5),
                    offset: const Offset(1.1, 1.1),
                    blurRadius: 10.0),
              ],
              color: Color(0xfff49738), //DesignCourseAppTheme.nearlyBlue,
              borderRadius: BorderRadius.circular(5.0)),
          child: Container(
            //constraints: BoxConstraints(maxWidth: screenWidth, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "$title",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
