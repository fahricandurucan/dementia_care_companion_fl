import 'package:dementia_care_companion_fl/screens/communicate_page.dart';
import 'package:dementia_care_companion_fl/screens/menu_page.dart';
import 'package:dementia_care_companion_fl/screens/reminder_page.dart';
import 'package:dementia_care_companion_fl/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demantia Care Companinon"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Get.to(const MenuPage());
                  },
                  child: circularWidget("Menü")),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Get.to(const ReminderPage());
                  },
                  child: circularWidget("Hatırlatıcı")),
              const SizedBox(
                width: 16,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(const CommunicatePage());
                  },
                  child: circularWidget("İletişim"))
            ],
          ),
        ],
      ),
    );
  }

  Widget circularWidget(String text) {
    return Container(
      height: 150,
      width: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: AppColors.instance.primaryColor,
        shape: BoxShape.circle,
      ),
      child: Text(text, style: TextStyle(color: AppColors.instance.white)),
    );
  }
}
