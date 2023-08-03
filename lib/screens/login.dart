import 'package:flutter/material.dart';
import 'package:loginui/screens/registration.dart';

// ignore: unused_import
import 'package:loginui/Responsive/responsive.dart';

import '../widgets/custombutton.dart';
import '../widgets/loading.dart';
import '../widgets/textfromfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;

  bool _isRembemerMe = false;

  // text field state
  String email = '';
  String password = '';
  Widget _buildPassword() {
    return TextFormFieldWidget(
      hintText: "Password",
      obscureText: true,
      textInputType: TextInputType.visiblePassword,
      actionKeyboard: TextInputAction.done,
      field: password,
      prefixIcon: Icon(Icons.keyboard_hide),
      defaultText: '',
    );
  }

  Widget _buildEmail() {
    return TextFormFieldWidget(
      hintText: "Email",
      obscureText: false,
      textInputType: TextInputType.emailAddress,
      actionKeyboard: TextInputAction.done,
      field: email,
      prefixIcon: Icon(Icons.email),
      defaultText: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/image2.jpg',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 20.0),
                          _buildEmail(),
                          const SizedBox(height: 10.0),
                          _buildPassword(),
                          const SizedBox(height: 3.0),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.brown[900],
                                checkColor: Colors.white,
                                value: _isRembemerMe,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isRembemerMe = value!;
                                  });
                                },
                              ),
                              SizedBox(width: 5),
                              const Text(
                                'Remember me ',
                                style: TextStyle(
                                    fontSize: 10.0, color: Colors.black),
                              ), //Text
                              Spacer(),
                              const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ), //Text
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          CustomButton(
                              buttonText: 'Login',
                              textColor: Colors.white,
                              borderRadius: 10,
                              buttonColor: Colors.brown[900],
                              borderColor: Colors.white,
                              onClick: () async {
                                await _submit(context);
                              }),
                          SizedBox(
                            height: 10.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text.rich(
                              TextSpan(
                                  text: 'Don\'t have an account',
                                  children: [
                                    TextSpan(
                                      text: 'Signup',
                                      style: TextStyle(
                                        color: Colors.brown[900],
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  Future<void> _submit(BuildContext context) async {}
}
