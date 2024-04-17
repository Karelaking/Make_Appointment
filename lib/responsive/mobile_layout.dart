import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:makeappointment/controllers/appointment_controller.dart';
import 'package:makeappointment/widgets/appointment_card.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key});

  final AppointmentController appointmentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        itemCount: appointmentController.appointmentList.length,
        itemBuilder: (context, index) {
          return AppointmentCard(
            appointment: appointmentController.appointmentList[index],
            index: index,
          );
        },
        shrinkWrap: true,
      );
    });
    ;
  }
}
