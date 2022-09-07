// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBv79VY43jIm202IX-kWReE3TbB4Cv1VHI',
    appId: '1:522938695625:web:537c978ebafd4f3d833218',
    messagingSenderId: '522938695625',
    projectId: 'gsgproject4',
    authDomain: 'gsgproject4.firebaseapp.com',
    storageBucket: 'gsgproject4.appspot.com',
    measurementId: 'G-Y3ZJH281CF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDG10B40_dz39su83VS2nEMiAbc_XyWafI',
    appId: '1:522938695625:android:829f0d4b090f3994833218',
    messagingSenderId: '522938695625',
    projectId: 'gsgproject4',
    storageBucket: 'gsgproject4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA5qR3-5Imd1j_1ldUXMlJgUjDsW-Ko9po',
    appId: '1:522938695625:ios:f3c651ba37d3a029833218',
    messagingSenderId: '522938695625',
    projectId: 'gsgproject4',
    storageBucket: 'gsgproject4.appspot.com',
    iosClientId: '522938695625-b63df67o66oa6qq81mqm64v9tmf11cqq.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommercApi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA5qR3-5Imd1j_1ldUXMlJgUjDsW-Ko9po',
    appId: '1:522938695625:ios:f3c651ba37d3a029833218',
    messagingSenderId: '522938695625',
    projectId: 'gsgproject4',
    storageBucket: 'gsgproject4.appspot.com',
    iosClientId: '522938695625-b63df67o66oa6qq81mqm64v9tmf11cqq.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommercApi',
  );
}
