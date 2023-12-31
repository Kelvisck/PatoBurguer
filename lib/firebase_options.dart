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
    apiKey: 'AIzaSyCvtmBe4o5JWdS4kYEt89m6gdf2WTGrD-Y',
    appId: '1:802048372343:web:f7e73c04ebca46794a2072',
    messagingSenderId: '802048372343',
    projectId: 'pato-burguer-73412',
    authDomain: 'pato-burguer-73412.firebaseapp.com',
    storageBucket: 'pato-burguer-73412.appspot.com',
    measurementId: 'G-FK4NR63VZ2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6Ji2xnHvnab3LkmA5TMLj8U7darY6WSA',
    appId: '1:802048372343:android:73d2628291bc1bd24a2072',
    messagingSenderId: '802048372343',
    projectId: 'pato-burguer-73412',
    storageBucket: 'pato-burguer-73412.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAONOlJet64IUKfORjsb6RHGAsWUk6vBOQ',
    appId: '1:802048372343:ios:d1d00d40003b24ab4a2072',
    messagingSenderId: '802048372343',
    projectId: 'pato-burguer-73412',
    storageBucket: 'pato-burguer-73412.appspot.com',
    iosClientId: '802048372343-8re89cj06m44ehssnnr6j3gkatg6l88h.apps.googleusercontent.com',
    iosBundleId: 'com.example.patoBurguer',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAONOlJet64IUKfORjsb6RHGAsWUk6vBOQ',
    appId: '1:802048372343:ios:12b629c78becfd294a2072',
    messagingSenderId: '802048372343',
    projectId: 'pato-burguer-73412',
    storageBucket: 'pato-burguer-73412.appspot.com',
    iosClientId: '802048372343-upv827fsh6rggvev4n0o687mek12d0ki.apps.googleusercontent.com',
    iosBundleId: 'com.example.patoBurguer.RunnerTests',
  );
}
