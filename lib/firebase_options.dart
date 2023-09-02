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
    apiKey: 'AIzaSyDgvezzKEpRn9-5wL05kSNci-wuhVnlZic',
    appId: '1:221829676698:web:49bbe813e22a226bf46923',
    messagingSenderId: '221829676698',
    projectId: 'flutterfire-17a70',
    authDomain: 'flutterfire-17a70.firebaseapp.com',
    storageBucket: 'flutterfire-17a70.appspot.com',
    measurementId: 'G-Q56Q8CX2XX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5loD2UFH_uPcjJvO7oKh29h1YCiLZFRY',
    appId: '1:221829676698:android:4231846f87feddd9f46923',
    messagingSenderId: '221829676698',
    projectId: 'flutterfire-17a70',
    storageBucket: 'flutterfire-17a70.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpvF7HY53NXj7QoNeypUsHHjq-cT5MnCU',
    appId: '1:221829676698:ios:9b5c10cc8f8bd71af46923',
    messagingSenderId: '221829676698',
    projectId: 'flutterfire-17a70',
    storageBucket: 'flutterfire-17a70.appspot.com',
    iosClientId: '221829676698-ibj6k03kpehr43aerv43s4fo5kq0ru6n.apps.googleusercontent.com',
    iosBundleId: 'com.example.modernlogintute',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpvF7HY53NXj7QoNeypUsHHjq-cT5MnCU',
    appId: '1:221829676698:ios:9b5c10cc8f8bd71af46923',
    messagingSenderId: '221829676698',
    projectId: 'flutterfire-17a70',
    storageBucket: 'flutterfire-17a70.appspot.com',
    iosClientId: '221829676698-ibj6k03kpehr43aerv43s4fo5kq0ru6n.apps.googleusercontent.com',
    iosBundleId: 'com.example.modernlogintute',
  );
}
