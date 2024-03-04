import 'package:dementia_care_companion_fl/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/reminder_page_controller.dart';

class ReminderPage extends StatelessWidget {
  final ReminderPageController controller = Get.put(ReminderPageController());
  final TextEditingController _timeController = TextEditingController();

  ReminderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hatırlatıcı Oluştur'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'İlaç/Randevu İsmi',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: '2 Saatte 1',
              decoration: const InputDecoration(
                labelText: 'İlaç Kullanım Sıklığı',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              items: const [
                DropdownMenuItem(
                  value: '2 Saatte 1',
                  child: Text('2 Saatte 1'),
                ),
                // Add other medication intervals here
              ],
              onChanged: (value) {
                // Handle medication interval change
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'İlaç Başlangıç Zamanı',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              controller: _timeController,
              readOnly: true,
              onTap: () async {
                TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (time != null) {
                  _timeController.text = time.format(context);
                }
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Save reminder
                controller.sendNotification();
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
    );
  }
}
