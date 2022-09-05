import 'package:bookstore/signup_screen.dart';
import 'package:bookstore/utils/colors__util.dart';
import 'package:bookstore/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordText = TextEditingController();

  TextEditingController _emailText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        hexStringToColor("CB2B93"),
        hexStringToColor("9546C4"),
        hexStringToColor("5E61F4")
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0),
        child: Column(children: <Widget>[
          logoWidget("assets/images/nahom.jpg"),
          SizedBox(
            height: 30,
          ),
          reusableTextField(
              "Enter UserName", Icons.person_outline, false, _emailText),
          SizedBox(
            height: 10,
          ),
          reusableTextField(
              "Enter Password", Icons.lock_outline, true, _passwordText),
          userButtons(context, true, () {}),
          signUpOption()
        ]),
      )),
    ));
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have Account?",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
