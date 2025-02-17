import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return FirebaseOptions(
        apiKey: dotenv.env['WEB_API_KEY']!,
        appId: dotenv.env['WEB_APP_ID']!,
        messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
        projectId: dotenv.env['PROJECT_ID']!,
        authDomain: dotenv.env['AUTH_DOMAIN'],
        storageBucket: dotenv.env['STORAGE_BUCKET'],
        measurementId: dotenv.env['MEASUREMENT_ID'],
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return FirebaseOptions(
          apiKey: dotenv.env['ANDROID_API_KEY']!,
          appId: dotenv.env['ANDROID_APP_ID']!,
          messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
          projectId: dotenv.env['PROJECT_ID']!,
          storageBucket: dotenv.env['STORAGE_BUCKET'],
        );
      case TargetPlatform.iOS:
        return FirebaseOptions(
          apiKey: dotenv.env['IOS_API_KEY']!,
          appId: dotenv.env['IOS_APP_ID']!,
          messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
          projectId: dotenv.env['PROJECT_ID']!,
          storageBucket: dotenv.env['STORAGE_BUCKET'],
          iosBundleId: dotenv.env['IOS_BUNDLE_ID'],
        );
      case TargetPlatform.macOS:
        return FirebaseOptions(
          apiKey: dotenv.env['MACOS_API_KEY']!,
          appId: dotenv.env['MACOS_APP_ID']!,
          messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
          projectId: dotenv.env['PROJECT_ID']!,
          storageBucket: dotenv.env['STORAGE_BUCKET'],
          iosBundleId: dotenv.env['MACOS_BUNDLE_ID'],
        );
      case TargetPlatform.windows:
        return FirebaseOptions(
          apiKey: dotenv.env['WINDOWS_API_KEY']!,
          appId: dotenv.env['WINDOWS_APP_ID']!,
          messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
          projectId: dotenv.env['PROJECT_ID']!,
          authDomain: dotenv.env['AUTH_DOMAIN'],
          storageBucket: dotenv.env['STORAGE_BUCKET'],
          measurementId: dotenv.env['MEASUREMENT_ID'],
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
}

Future<void> loadEnv() async {
  await dotenv.load(fileName: "assets/dot_env/.env");
}
