import 'package:dementia_care_companion_fl/screens/homepage.dart';
import 'package:dementia_care_companion_fl/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notification/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        home: const Homepage());
  }
}
