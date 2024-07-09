import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';

class NotificationController {
  /// Use this method to detect when a new notification or a schedule is created
  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    if (kDebugMode) {
      print('notification created  ${receivedNotification.title}');
    }
    // Your code goes here
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
    if (kDebugMode) {
      print('notification displayed  ${receivedNotification.title}');
    }
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes her
    if (kDebugMode) {
      print('Notification dismissed  ${receivedAction.title}');
    }
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    if (kDebugMode) {
      //print('Notification tapped  payload : ${receivedAction.toString()}');
    }
  }
}
