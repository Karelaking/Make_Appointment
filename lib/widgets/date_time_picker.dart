import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeappointment/controllers/add_appointmment_controller.dart';

final DateTime dateTime = DateTime.now();
final AddAppointmentController addAppointmentController = Get.put(
  AddAppointmentController(),
);

class DateTimePicker {
  datePicker(context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Card(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: CupertinoDatePicker(
              initialDateTime: dateTime,
              mode: CupertinoDatePickerMode.date,
              dateOrder: DatePickerDateOrder.dmy,
              onDateTimeChanged: (value) {
                addAppointmentController.setDate(value);
              },
            ),
          ),
        );
      },
    );
  }

  timePicker(context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Card(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.time,
              dateOrder: DatePickerDateOrder.dmy,
              onDateTimeChanged: (value) {
                addAppointmentController.setTime(value);
              },
            ),
          ),
        );
      },
    );
  }
}
