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
    apiKey: 'AIzaSyAOc9m3wgH540xPv8U9hDsSDHvrHMvRylA',
    appId: '1:516554806777:web:7c59305ba784a7957b5928',
    messagingSenderId: '516554806777',
    projectId: 'lk-cric-park',
    authDomain: 'lk-cric-park.firebaseapp.com',
    storageBucket: 'lk-cric-park.firebasestorage.app',
    measurementId: 'G-29WJSB8G8Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjwO4mmeb3u7Sj3OTV6k0BJQib11JHv5I',
    appId: '1:516554806777:android:e6671a84ca46dfe17b5928',
    messagingSenderId: '516554806777',
    projectId: 'lk-cric-park',
    storageBucket: 'lk-cric-park.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAw0M5m1up1DjBa8Vals3S-RFnaU1rrbos',
    appId: '1:516554806777:ios:37abebd3f0a7e6bf7b5928',
    messagingSenderId: '516554806777',
    projectId: 'lk-cric-park',
    storageBucket: 'lk-cric-park.firebasestorage.app',
    iosBundleId: 'com.k.lkCricPark',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAw0M5m1up1DjBa8Vals3S-RFnaU1rrbos',
    appId: '1:516554806777:ios:37abebd3f0a7e6bf7b5928',
    messagingSenderId: '516554806777',
    projectId: 'lk-cric-park',
    storageBucket: 'lk-cric-park.firebasestorage.app',
    iosBundleId: 'com.k.lkCricPark',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAOc9m3wgH540xPv8U9hDsSDHvrHMvRylA',
    appId: '1:516554806777:web:178fed01bae4289e7b5928',
    messagingSenderId: '516554806777',
    projectId: 'lk-cric-park',
    authDomain: 'lk-cric-park.firebaseapp.com',
    storageBucket: 'lk-cric-park.firebasestorage.app',
    measurementId: 'G-J6KDMTN8CR',
  );
}
