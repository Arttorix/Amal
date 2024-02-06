import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCNZKdevybY-ZceejoG9-qRxJbJpn_HES8',
    appId: '1:499835844808:web:d46b40ccdffa43b5144dfd',
    messagingSenderId: '499835844808',
    projectId: 'amal-17f46',
    authDomain: 'amal-17f46.firebaseapp.com',
    storageBucket: 'amal-17f46.appspot.com',
    measurementId: 'G-8BVFQ8Z3V5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBlQR1nG8QD2RpjwApuf-CMBOKqk5DzTNQ',
    appId: '1:499835844808:android:b98fcebbdefeb6fe144dfd',
    messagingSenderId: '499835844808',
    projectId: 'amal-17f46',
    storageBucket: 'amal-17f46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9OGeXjn_nVt8ZiCUChDWTuzM9eQ2dWGA',
    appId: '1:499835844808:ios:a174fe788f0a8c99144dfd',
    messagingSenderId: '499835844808',
    projectId: 'amal-17f46',
    storageBucket: 'amal-17f46.appspot.com',
    iosBundleId: 'com.example.flutterApplicationAmal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA9OGeXjn_nVt8ZiCUChDWTuzM9eQ2dWGA',
    appId: '1:499835844808:ios:3598c12804019168144dfd',
    messagingSenderId: '499835844808',
    projectId: 'amal-17f46',
    storageBucket: 'amal-17f46.appspot.com',
    iosBundleId: 'com.example.flutterApplicationAmal.RunnerTests',
  );
}
