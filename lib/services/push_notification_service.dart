import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotification {
  // ignore: non_constant_identifier_names
  final FirebaseMessaging _fcm = FirebaseMessaging();

  Future initialise() async {
    if (Platform.isIOS) {
      _fcm.requestNotificationPermissions(IosNotificationSettings());
    }

    _fcm.configure(
      onMessage: (Map<String, dynamic> message) async {
      print('onMessage: $message');
    },

      onLaunch: (Map<String, dynamic> message) async {
      print('onMessage: $message');
    },

      onResume: (Map<String, dynamic> message) async {
      print('onMessage: $message');
    },
    
    );
  }
}
