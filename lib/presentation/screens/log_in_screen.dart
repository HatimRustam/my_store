import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'forgot_password.dart';

class logInScreen extends StatefulWidget {
  const logInScreen({super.key});

  @override
  State<logInScreen> createState() => _logInScreenState();
}

class _logInScreenState extends State<logInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Container(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Color(0xff2D2D2D),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    hintStyle:
                        TextStyle(fontSize: 12, color: Color(0xff9B9B9B)),
                    contentPadding: EdgeInsets.all(16),
                    filled: true,
                    floatingLabelStyle: TextStyle(color: Color(0xff9B9B9B)),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    labelText: 'Email',
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Color(0xff2D2D2D),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    hintStyle:
                        TextStyle(fontSize: 12, color: Color(0xff9B9B9B)),
                    contentPadding: EdgeInsets.all(16),
                    filled: true,
                    floatingLabelStyle: TextStyle(color: Color(0xff9B9B9B)),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    labelText: 'Password',
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgotPassword(),));
                  },
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Spacer(),
                        Text(
                          "Forgot your password?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SvgPicture.asset(
                            'assets/icons/Vector.svg',
                            width: 8,
                            height: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xffDB3022)),
                  width: double.infinity,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Or sign up with social account",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 16.0, bottom: 16, left: 32, right: 32),
                            child: SvgPicture.asset(
                              "assets/icons/google.svg",
                              width: 32,
                              height: 32,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 16.0, bottom: 16, left: 32, right: 32),
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              width: 32,
                              height: 32,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
