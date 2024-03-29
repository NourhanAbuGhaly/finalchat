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
    apiKey: 'AIzaSyDa0nzHx1x4RWQuM8--g6O56A6EV03w3PE',
    appId: '1:229032275129:web:2c53598f7d9b4c28c1bf68',
    messagingSenderId: '229032275129',
    projectId: 'finalchat-8156d',
    authDomain: 'finalchat-8156d.firebaseapp.com',
    storageBucket: 'finalchat-8156d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpUi90pxIfUP45ZB1GITvFGML6mk2kz3s',
    appId: '1:229032275129:android:fe89f1871ee51648c1bf68',
    messagingSenderId: '229032275129',
    projectId: 'finalchat-8156d',
    storageBucket: 'finalchat-8156d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpnpwRaqtdeWyqvBQz4nU2SNm3NkJ3Li0',
    appId: '1:229032275129:ios:28c4427864b289cbc1bf68',
    messagingSenderId: '229032275129',
    projectId: 'finalchat-8156d',
    storageBucket: 'finalchat-8156d.appspot.com',
    iosClientId: '229032275129-k0v7a320sv3skbkgkem94plfvkc7ao0l.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalchat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpnpwRaqtdeWyqvBQz4nU2SNm3NkJ3Li0',
    appId: '1:229032275129:ios:28c4427864b289cbc1bf68',
    messagingSenderId: '229032275129',
    projectId: 'finalchat-8156d',
    storageBucket: 'finalchat-8156d.appspot.com',
    iosClientId: '229032275129-k0v7a320sv3skbkgkem94plfvkc7ao0l.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalchat',
  );
}
