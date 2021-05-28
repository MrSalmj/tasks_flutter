import 'package:animate_do/animate_do.dart';
import 'package:dailytasks_flutter/config/constants.dart';
import 'package:dailytasks_flutter/ui/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 3000)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (_) => LoginScreen())));
    return SafeArea(
      child: Scaffold(
        body: FadeIn(
          child: Container(
            height: getSize(context).height,
            width: getSize(context).width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [kMainBlue, kMainBlue.withAlpha(200)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Center(
              child: Text(
                "DailyTasks",
                style: GoogleFonts.poppins(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
