import 'package:flutter/material.dart';

// ignore: unused_import
import '../Responsive/responsive.dart';

import '../widgets/custombutton.dart';
import '../widgets/loading.dart';
import '../widgets/textfromfield.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? password;
  String? email;
  String? confirmPassword;
  String? name;

  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  bool _isRembemerMe = false;

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

  Widget _buildName() {
    return TextFormFieldWidget(
      hintText: "Name",
      obscureText: false,
      textInputType: TextInputType.text,
      actionKeyboard: TextInputAction.done,
      // validator: (val) {   if (val== null) {
      //     return 'Name is required';
      //   }

      //   return null;
      // },

      // onChanged: (val) {
      //   setState(() => Name = val);
      // },
      field: name,
      prefixIcon: Icon(Icons.person),
      defaultText: '',
    );
  }

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

  Widget _buildConfirmPassword() {
    return TextFormFieldWidget(
      hintText: "Confirm Password",
      obscureText: true,
      textInputType: TextInputType.visiblePassword,
      actionKeyboard: TextInputAction.done,
      field: confirmPassword,
      prefixIcon: Icon(Icons.keyboard_hide),
      defaultText: '',
    );
  }

  Widget _buildCheck() {
    return Checkbox(
      activeColor: Colors.brown[900],
      checkColor: Colors.white,
      value: _isRembemerMe,
      onChanged: (bool? value) {
        setState(() {
          _isRembemerMe = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return loading
        ? Loading()
        : Scaffold(
            key: _scaffoldKey,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.brown[900],
                            borderRadius: const BorderRadius.only(
                              bottomLeft: const Radius.circular(40.0),
                              bottomRight: const Radius.circular(40.0),
                            )),
                        height: 180,
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(height: 60),
                            Text(
                              'WELCOME BACK',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Continue to sign up!',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        )),
                    const SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 10.0),
                            _buildName(),
                            const SizedBox(height: 10.0),
                            _buildEmail(),
                            const SizedBox(height: 10.0),
                            _buildPassword(),
                            const SizedBox(height: 10.0),
                            _buildConfirmPassword(),
                            const SizedBox(height: 10.0),
                            Row(
                              children: [
                                _buildCheck(),
                                Text(
                                  'By signing up you agree to our terms? ',
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.brown[900]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            CustomButton(
                                buttonText: 'sign up',
                                textColor: Colors.white,
                                borderRadius: 10,
                                buttonColor: Colors.brown[900],
                                borderColor: Colors.white,
                                onClick: () async {
                                  await _submit();
                                }),
                            SizedBox(
                              height: 5.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              },
                              child: Text.rich(
                                TextSpan(
                                    text: 'Already have an account?',
                                    children: [
                                      TextSpan(
                                        text: 'Login',
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
            ));
  }
}

_submit() async {}
