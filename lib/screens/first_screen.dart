import 'package:flutter/material.dart';
import 'package:loginui/screens/registration.dart';

// ignore: unused_import
import 'package:loginui/Responsive/responsive.dart';
// ignore: unused_import
import 'package:loginui/widgets/constants.dart';
import '../widgets/custombutton.dart';
import 'login.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildCard(),
            buildStoreName(),
            buildIntroSloganText(),
            buildSigninButton(context),
            const SizedBox(
              height: 16,
            ),
            buildSignupButton(context),
          ],
        ),
      ),
    );
  }

  Padding buildStoreName() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: const Text(
        'Book Store',
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    );
  }

  Image buildCard() {
    return Image.asset(
      'images/image1.jpg',
    );
  }

  Padding buildIntroSloganText() {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: const Text(
        'Not just a book store, but an experience',
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }

  CustomButton buildSignupButton(BuildContext context) {
    return CustomButton(
      onClick: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Register()));
      },
      buttonText: 'Sign up',
      textColor: Colors.white,

      borderRadius: 10,
      buttonColor: Colors.brown[900],
      // borderColor: Colors.white,
    );
  }

  CustomButton buildSigninButton(BuildContext context) {
    return CustomButton(
      onClick: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const SignIn()));
      },
      buttonText: 'Sign in',
      textColor: Colors.white,
      borderRadius: 10,
      buttonColor: Colors.black,
      borderColor: Colors.white,
    );
  }
}
