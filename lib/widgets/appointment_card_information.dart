import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';
import 'package:makeappointment/models/appointment_model.dart';
import 'package:makeappointment/pages/add_appointments.dart';
import 'package:makeappointment/widgets/importance_status_indicator.dart';

class AppointmentCardInformation extends StatelessWidget {
  const AppointmentCardInformation({
    super.key,
    required this.appointment,
  });

  final AppointmentModel appointment;

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
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.46,
                child: Text(
                  "${appointment.firstName} ${appointment.secondName}",
                  style: GoogleFonts.poppins().copyWith(fontSize: 25),
                  overflow: TextOverflow.ellipsis,
                ),
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
                          // Pin to top
                          CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Row(
                              children: [
                                AppIconConstants.unPined,
                                const Text("Pin")
                                    .paddingSymmetric(horizontal: 10),
                              ],
                            ),
                          ),
                          //  Edit
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return const AddAppointments();
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
                          //  Share
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return const AddAppointments();
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
                          // Delete
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
                                          //  TODO:  remove appointment
                                          appointment.delete();
                                          Navigator.pop(context);
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
              Text(
                appointment.date,
                style: GoogleFonts.poppins().copyWith(fontSize: 12),
              ),
              Text(
                appointment.time,
                style: GoogleFonts.poppins().copyWith(fontSize: 12),
              )
            ],
          ),
          Row(
            children: [
              AppIconConstants.location.paddingOnly(right: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.51,
                child: Text(
                  appointment.location,
                  style: GoogleFonts.poppins(),
                  overflow: TextOverflow.ellipsis,
                ),
              ).paddingSymmetric(vertical: 8)
            ],
          )
        ],
      ),
    );
  }
}
