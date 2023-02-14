
import 'package:finalchat/screens/chat_screen.dart';
import 'package:finalchat/screens/login_screen.dart';
import 'package:finalchat/screens/notifications_screen.dart';
import 'package:finalchat/screens/registration_screen.dart';
import 'package:finalchat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

String? fcmToken;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  //
  // print('User granted permission: ${settings.authorizationStatus}');
  //
  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   print(" Get a message  whilsl in tje foreground");
  //   print(" Message data : ${message != null}");
  //   print(
  //       " Message also contained a notification : ${message.notification!.title}");
  // });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await FirebaseMessaging.instance.subscribeToTopic("breaking_news");
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  void getFcm() async {
    fcmToken = await FirebaseMessaging.instance.getToken();
    print('fcm token: $fcmToken');
  }

  @override
  Widget build(BuildContext context) {
    getFcm();
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        NotificationsScreen.id: (context) => NotificationsScreen(),
      },
    );
  }
}
