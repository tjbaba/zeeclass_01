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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB4TlxEv57B2jTPRjHl9HyMEZtRkq1LwSk',
    appId: '1:450772692312:web:4a021a72b243187c8a492d',
    messagingSenderId: '450772692312',
    projectId: 'flutter-class-01',
    authDomain: 'flutter-class-01.firebaseapp.com',
    storageBucket: 'flutter-class-01.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRtSVnHW-Jnf1BbdNQlpqBnHM0qOVq_-A',
    appId: '1:450772692312:android:15f26b299bec09e78a492d',
    messagingSenderId: '450772692312',
    projectId: 'flutter-class-01',
    storageBucket: 'flutter-class-01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDK4z1f6cV4UFx9UgOYhiCaDsqL2ZxDg3M',
    appId: '1:450772692312:ios:44ec188ac33808658a492d',
    messagingSenderId: '450772692312',
    projectId: 'flutter-class-01',
    storageBucket: 'flutter-class-01.appspot.com',
    iosBundleId: 'com.example.zeeclass01',
  );
}
