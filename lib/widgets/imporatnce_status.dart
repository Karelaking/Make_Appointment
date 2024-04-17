import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:makeappointment/controllers/add_appointmment_controller.dart';

final AddAppointmentController addAppointmentController = Get.find();

showImportanceStatus() {
  return Row(
    children: [
      Expanded(
        child: Obx(
          () {
            return CupertinoSlider(
              value: addAppointmentController.importanceLevel.value,
              min: 1,
              max: 100,
              divisions: 4,
              onChanged: (value) {
                addAppointmentController.setImportanceStatus(value);
                log(addAppointmentController.importanceLevel.value.toString());
              },
            );
          },
        ),
      ),
    ],
  ).paddingSymmetric(horizontal: 5, vertical: 10);
}
