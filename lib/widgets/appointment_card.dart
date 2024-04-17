import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makeappointment/models/appointment_model.dart';
import 'package:makeappointment/pages/appointment_information.dart';
import 'package:makeappointment/widgets/appointment_card_image.dart';
import 'package:makeappointment/widgets/appointment_card_information.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key,
    required this.appointment,
  });

  final AppointmentModel appointment;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) {
              return AppointmentInformation(
                appointmentModel: appointment,
              );
            },
          ),
        );
      },
      child: Badge(
        alignment: Alignment.topLeft,
        offset: Offset(MediaQuery.of(context).size.width * 0.8,
            MediaQuery.of(context).size.height * 0.001),
        label: const Text("3 hour left"),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(9.5),
              child: Row(
                children: [
                  const AppointmentCardImage(),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: AppointmentCardInformation(
                      appointment: appointment,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
