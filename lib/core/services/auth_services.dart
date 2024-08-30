import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class authentication{
  static Future<dynamic> signup({required String email,required String password})async{
    try{
      final _auth = FirebaseAuth.instance;
      final userCredentials = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch(e){
      debugPrint(e.toString());
      throw Exception(e.toString());
    }
  }
}