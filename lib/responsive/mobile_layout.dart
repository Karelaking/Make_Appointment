import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:makeappointment/controllers/appointment_controller.dart';
import 'package:makeappointment/database/appointments_database.dart';
import 'package:makeappointment/models/appointment_model.dart';
import 'package:makeappointment/widgets/appointment_card.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key});

  final AppointmentController appointmentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<AppointmentModel>>(
      valueListenable: AppointmentDatabase.getAppointment().listenable(),
      builder: (context, box, child) {
        final appointmentModel = box.values.toList().cast<AppointmentModel>;
        log(appointmentModel().toString());
        return ListView.builder(
          itemCount: appointmentModel().length,
          itemBuilder: (context, index) {
            return AppointmentCard(appointment: appointmentModel()[index]);
          },
        );
      },
    );
  }
}
