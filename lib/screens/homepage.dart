import 'package:dementia_care_companion_fl/utils/app_colors.dart';
import 'package:flutter/material.dart';

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
              Container(
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
                child: Text("Menü", style: TextStyle(color: AppColors.instance.white)),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                child: Text(
                  "Hatırlatıcı",
                  style: TextStyle(color: AppColors.instance.white),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
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
                child: Text("İletişim", style: TextStyle(color: AppColors.instance.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
