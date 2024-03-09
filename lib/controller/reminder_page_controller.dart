import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/reminder.dart';
import '../notification/notification_service.dart';

class ReminderPageController extends GetxController {
  final Rx<TextEditingController> medicineNameController = TextEditingController().obs;
  final Rx<TextEditingController> timeController = TextEditingController().obs;

  final List<String> medicationIntervals = [
    '2 Saatte 1',
    '3 Saatte 1',
    '4 Saatte 1',
    // Add other medication intervals here
  ];

  // Tüm alanları sıfırla
  void clearFields() {
    medicineNameController.value.clear();
    timeController.value.clear();
  }

  Future<void> sendNotification() async {
    return await NotificationService.showNotification(
      title: "Demantia Care Companion",
      body: "How are you feeling ?",
      schedule: true,
      interval: 10, // 300 seconds, 5 minutes
      payload: {"emotion": "deneme"},
      actionButtons: [
        NotificationActionButton(
          key: "CHANGE_EMOTION_KEY",
          label: "Change Emotion",
        ),
        NotificationActionButton(
          key: "GET_NEW_QUOTE_KEY",
          label: "Get New Quote",
        ),
      ],
    );
  }

  var reminders = <Reminder>[].obs;

  void addReminder(Reminder reminder) {
    reminders.add(reminder);
  }

  void deleteReminder(int index) {
    reminders.removeAt(index);
  }
}
