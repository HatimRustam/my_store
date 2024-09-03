import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/services/auth_services.dart';
import 'log_in_screen.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  bool _validateName(String val){
    return !(val.isNotEmpty && val.length>=3);
  }

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
                    "Sign Up",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 72.0),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (_validateName(value??'')) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        controller: nameController,
                        cursorColor: Colors.black,
                        style: TextStyle(
                            color: Color(0xff2D2D2D),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        onChanged: (val) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          suffixIcon: (_validateName(nameController.text))
                              ? SvgPicture.asset("assets/icons/cross.svg")
                              : SvgPicture.asset(
                                  "assets/icons/right.svg",
                                ),
                          suffixIconConstraints:
                              BoxConstraints(minWidth: 24, minHeight: 24),
                          errorStyle: TextStyle(fontSize: 12),
                          hintStyle:
                              TextStyle(fontSize: 12, color: Color(0xff9B9B9B)),
                          contentPadding: EdgeInsets.all(16),
                          filled: true,
                          floatingLabelStyle:
                              TextStyle(color: Color(0xff9B9B9B)),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'Name',
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: TextField(
                        controller: emailController,
                        cursorColor: Colors.black,
                        style: TextStyle(
                            color: Color(0xff2D2D2D),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          floatingLabelStyle:
                              TextStyle(color: Color(0xff9B9B9B)),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintStyle:
                              TextStyle(fontSize: 12, color: Color(0xff9B9B9B)),
                          contentPadding: EdgeInsets.all(16),
                          filled: true,
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
                        controller: passwordController,
                        cursorColor: Colors.black,
                        style: TextStyle(
                            color: Color(0xff2D2D2D),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          floatingLabelStyle:
                              TextStyle(color: Color(0xff9B9B9B)),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintStyle:
                              TextStyle(fontSize: 12, color: Color(0xff9B9B9B)),
                          contentPadding: EdgeInsets.all(16),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8)),
                          labelText: 'Password',
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => logInScreen(),
                        ));
                      },
                      child: Row(
                        children: [
                          Spacer(),
                          Text(
                            "Already have an account?",
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
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: InkWell(
                  onTap: () async {
                    if (formkey.currentState!.validate()) {
                      await authentication.signup(
                          email: emailController.text,
                          password: passwordController.text);
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Color(0xffDB3022)),
                    width: double.infinity,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Text(
                    "Or sign up with social account",
                    style: TextStyle(fontSize: 16),
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
