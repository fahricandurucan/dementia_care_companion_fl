import 'package:dementia_care_companion_fl/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CommunicatePage extends StatelessWidget {
  const CommunicatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İletişim"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          communicateWidget("Bakım Verenlerle İletişim"),
          communicateWidget("Uzmanına Sor"),
        ],
      ),
    );
  }

  Widget communicateWidget(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        width: double.infinity,
        height: 120,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: AppColors.instance.primaryColor,
        ),
        child: Text(
          text,
          style: TextStyle(color: AppColors.instance.white),
        ),
      ),
    );
  }
}
