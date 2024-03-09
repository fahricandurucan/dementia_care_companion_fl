import 'package:dementia_care_companion_fl/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/reminder_page_controller.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({Key? key}) : super(key: key);

  @override
  _ReminderPageState createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  final ReminderPageController controller = Get.put(ReminderPageController());
  bool showErrors = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hatırlatıcı Oluştur'),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'İlaç/Randevu İsmi',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    errorText: showErrors && controller.medicineNameController.value.text.isEmpty
                        ? 'Bu alan boş bırakılamaz'
                        : null,
                  ),
                  controller: controller.medicineNameController.value,
                ),
                const SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  value: '2 Saatte 1',
                  decoration: InputDecoration(
                    labelText: 'İlaç Kullanım Sıklığı',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    errorText: showErrors && controller.medicationIntervals.isEmpty
                        ? 'Bir seçenek seçiniz'
                        : null,
                  ),
                  items: controller.medicationIntervals.map((String interval) {
                    return DropdownMenuItem(
                      value: interval,
                      child: Text(
                        interval,
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // Handle medication interval change
                  },
                ),
                const SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'İlaç Başlangıç Zamanı',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    errorText: showErrors && controller.timeController.value.text.isEmpty
                        ? 'Bu alan boş bırakılamaz'
                        : null,
                  ),
                  controller: controller.timeController.value,
                  readOnly: true,
                  onTap: () async {
                    TimeOfDay? time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    if (time != null) {
                      setState(() {
                        controller.timeController.value.text = time.format(context);
                      });
                    }
                  },
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Check for empty fields and show errors
                      if (controller.medicineNameController.value.text.isEmpty ||
                          controller.timeController.value.text.isEmpty) {
                        showErrors = true;
                      } else {
                        showErrors = false; // Reset showErrors if there are no empty fields
                        // Save reminder
                        controller.sendNotification();
                        controller.clearFields();
                        Get.snackbar(
                          'Hatırlatıcı Oluşturuldu', // Başlık
                          '', // İçerik
                          snackPosition: SnackPosition.BOTTOM, // Snackbar pozisyonu
                          backgroundColor: AppColors.instance.primaryColor, // Arka plan rengi
                          colorText: Colors.white, // Metin rengi
                          margin: const EdgeInsets.all(20.0), // Kenar boşluğu
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0), // İç boşluğu
                          borderRadius: 10.0, // Kenar yuvarlaklığı
                          duration: const Duration(seconds: 3), // Süre
                        );
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.instance.primaryColor, // text color
                  ),
                  child: const Text('Kaydet'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
