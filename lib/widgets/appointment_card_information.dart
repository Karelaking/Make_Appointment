import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';
import 'package:makeappointment/controllers/appointment_controller.dart';
import 'package:makeappointment/pages/add_appointments.dart';
import 'package:makeappointment/widgets/importance_status_indicator.dart';

class AppointmentCardInformation extends StatelessWidget {
  AppointmentCardInformation(
      {super.key,
      required this.title,
      required this.date,
      required this.time,
      required this.location,
      required this.index});

  final String title;
  final String date;
  final String time;
  final String location;
  final int index;
  final AppointmentController appointmentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.58,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins().copyWith(fontSize: 20),
              ),
              CupertinoButton(
                padding: const EdgeInsets.all(0),
                child: AppIconConstants.dotMenu,
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return CupertinoActionSheet(
                        actions: [
                          CupertinoActionSheetAction(
                            onPressed: () {
                              showCupertinoModalPopup(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: const Text("Delete"),
                                    content:
                                        const Text("Do you want delete it ?"),
                                    actions: [
                                      CupertinoDialogAction(
                                        child: const Text("No"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                      CupertinoDialogAction(
                                        isDestructiveAction: true,
                                        onPressed: () {
                                          appointmentController
                                              .removeAppointment(index);
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Yes"),
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                            isDestructiveAction: true,
                            child: Row(
                              children: [
                                AppIconConstants.delete,
                                const Text("Delete")
                                    .paddingSymmetric(horizontal: 10),
                              ],
                            ),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return AddAppointments();
                                  },
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                AppIconConstants.edit,
                                const Text("Edit")
                                    .paddingSymmetric(horizontal: 10),
                              ],
                            ),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return AddAppointments();
                                  },
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                AppIconConstants.share,
                                const Text("Share")
                                    .paddingSymmetric(horizontal: 10),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ImportanceStatusIndicator(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    date,
                    style: const TextStyle(fontSize: 10),
                  ),
                  Text(
                    time,
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              AppIconConstants.location,
              Text(
                location,
              )
            ],
          )
        ],
      ),
    );
  }
}
