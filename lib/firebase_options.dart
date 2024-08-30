// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCwHjpFEz2_sVPNu-vKQpK0pAG-Oy6e85s',
    appId: '1:588051783692:web:11ff215290dfcb2c088e29',
    messagingSenderId: '588051783692',
    projectId: 'my-store-2eff8',
    authDomain: 'my-store-2eff8.firebaseapp.com',
    storageBucket: 'my-store-2eff8.appspot.com',
    measurementId: 'G-3RG11GG8BF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDyUK66XdXWRVgKF7KlE58tVPHuRTxJO2M',
    appId: '1:588051783692:android:b778361bc8b97167088e29',
    messagingSenderId: '588051783692',
    projectId: 'my-store-2eff8',
    storageBucket: 'my-store-2eff8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCerYzrHIqQSqQ3cvigQq9yRYuo3U5OCUQ',
    appId: '1:588051783692:ios:3fbdb6c986d4adf5088e29',
    messagingSenderId: '588051783692',
    projectId: 'my-store-2eff8',
    storageBucket: 'my-store-2eff8.appspot.com',
    iosBundleId: 'com.example.myStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCerYzrHIqQSqQ3cvigQq9yRYuo3U5OCUQ',
    appId: '1:588051783692:ios:3fbdb6c986d4adf5088e29',
    messagingSenderId: '588051783692',
    projectId: 'my-store-2eff8',
    storageBucket: 'my-store-2eff8.appspot.com',
    iosBundleId: 'com.example.myStore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCwHjpFEz2_sVPNu-vKQpK0pAG-Oy6e85s',
    appId: '1:588051783692:web:9e9704b0e0bcab97088e29',
    messagingSenderId: '588051783692',
    projectId: 'my-store-2eff8',
    authDomain: 'my-store-2eff8.firebaseapp.com',
    storageBucket: 'my-store-2eff8.appspot.com',
    measurementId: 'G-1BX51RB55V',
  );
}
