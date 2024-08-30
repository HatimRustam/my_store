import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Forgot password",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                  "Please, enter your email address. You will receive a link to create a new password via email.",style: TextStyle(fontSize: 12),),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  cursorColor: Colors.black,
                  style: const TextStyle(
                      color: Color(0xff2D2D2D),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(fontSize: 12, color: Color(0xff9B9B9B)),
                    contentPadding: const EdgeInsets.all(16),
                    filled: true,
                    floatingLabelStyle:
                        const TextStyle(color: Color(0xff9B9B9B)),
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
                      "SEND",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
