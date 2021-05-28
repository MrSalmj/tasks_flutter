import 'package:dailytasks_flutter/config/constants.dart';
import 'package:dailytasks_flutter/ui/screens/home_screen/home_screen.dart';
import 'package:dailytasks_flutter/ui/widgets/custom_button.dart';
import 'package:dailytasks_flutter/ui/widgets/custom_input_field.dart';
import 'package:dailytasks_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            _buildAppName(),
            SizedBox(
              height: 90,
            ),
            _buildEmailTextField(),
            SizedBox(
              height: 12,
            ),
            _buildPasswordTextField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: "Forget Password?",
                    color: kMainBlue,
                    size: 15.5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _buildLoginButton(context),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Divider(
                thickness: 1.2,
                color: kMainBlue.withOpacity(0.7),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: CustomText(text: "Or with"),
            )),
            _buildSocialMediaLogin(),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  size: 15.0,
                  text: "Don't have an account?",
                  color: kTextBlue,
                ),
                CustomText(
                  size: 16.0,
                  text: " Sign Up",
                  color: kMainBlue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Row _buildSocialMediaLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(width: 0.5), shape: BoxShape.circle),
          child: Image.asset(
            'assets/icons/google.png',
            height: 30,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(width: 0.5), shape: BoxShape.circle),
          child: Image.asset(
            'assets/icons/facebook.png',
            height: 30,
          ),
        )
      ],
    );
  }

  CustomButton _buildLoginButton(BuildContext context) {
    return CustomButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomeScreen()));
        },
        customText: CustomText(
          text: "Login",
          size: 16.0,
          color: Colors.white,
        ),
        width: getSize(context).width * 0.75,
        borderRadius: 48.0,
        backgroundColor: kMainBlue);
  }

  CustomInputField _buildPasswordTextField() {
    return CustomInputField(
      margin: EdgeInsets.symmetric(horizontal: 30),
      hintText: "Password",
      obscureText: true,
      controller: emailController,
      textStyle: GoogleFonts.poppins(),
      hintStyle: GoogleFonts.poppins(),
      prefixIcon: Icon(Icons.password),
      backgroundColor: Colors.grey[200],
    );
  }

  CustomInputField _buildEmailTextField() {
    return CustomInputField(
      margin: EdgeInsets.symmetric(horizontal: 30),
      hintText: "Email",
      controller: emailController,
      textStyle: GoogleFonts.poppins(),
      hintStyle: GoogleFonts.poppins(),
      prefixIcon: Icon(Icons.alternate_email),
      backgroundColor: Colors.grey[200],
    );
  }

  Center _buildAppName() {
    return Center(
      child: Text(
        "DailyTasks",
        style: GoogleFonts.poppins(
            fontSize: 35, fontWeight: FontWeight.bold, color: kMainBlue),
      ),
    );
  }
}
