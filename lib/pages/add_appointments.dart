import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';
import 'package:makeappointment/controllers/add_appointmment_controller.dart';
import 'package:makeappointment/controllers/appointment_controller.dart';
import 'package:makeappointment/database/appointments_database.dart';
import 'package:makeappointment/models/appointment_model.dart';
import 'package:makeappointment/widgets/application_app_bar.dart';
import 'package:makeappointment/widgets/date_time_picker.dart';
import 'package:makeappointment/widgets/file_picker.dart';
import 'package:makeappointment/widgets/filled_button.dart';
import 'package:makeappointment/widgets/imporatnce_status.dart';
import 'package:makeappointment/widgets/input_field.dart';

class AddAppointments extends StatefulWidget {
  const AddAppointments({super.key, this.appointmentModel});

  final AppointmentModel? appointmentModel;

  @override
  State<AddAppointments> createState() => _AddAppointmentsState();
}

class _AddAppointmentsState extends State<AddAppointments> {
  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController secondNameController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController webSiteController = TextEditingController();

  final TextEditingController locationController = TextEditingController();

  final TextEditingController dateController = TextEditingController();

  final TextEditingController timeController = TextEditingController();

  final TextEditingController otherPersonController = TextEditingController();

  final TextEditingController meetingGoalController = TextEditingController();

  final AppointmentController appointmentController = Get.find();

  final AddAppointmentController addAppointmentController =
      Get.put(AddAppointmentController());

  final appointmentDatabase = AppointmentDatabase.getAppointment();

  final date = DateFormat().add_yMd().format(
        DateTime.now(),
      );
  final time = DateFormat().add_yMd().format(
        DateTime.now(),
      );

  _addAppointment() {
    appointmentDatabase.add(
      AppointmentModel(
        firstName: firstNameController.text.toString(),
        secondName: secondNameController.text.toString(),
        imageUrl: "",
        date: addAppointmentController.dateOfAppointment.value,
        time: addAppointmentController.timeOfAppointment.value,
        phone: phoneController.text.toString(),
        email: emailController.text.toString(),
        website: webSiteController.text.toString(),
        description: descriptionController.text.toString(),
        location: locationController.text.toString(),
        importanceLavel: [],
        leftTime: "",
        otherPersons: [],
        documents: [],
      ),
    );
  }

  _editAppointment() {}

  @override
  Widget build(BuildContext context) {
    // debugPrint(DateFormat().add_yMd().format(_dateTime),);
    return Hero(
      tag: "addAppointments",
      child: Scaffold(
        appBar: ApplicationAppBar(
          leading: CupertinoButton(
            child: AppIconConstants.arrowBack,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImagePickers(),
                Text(
                  "Title of the meeting",
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 23, fontWeight: FontWeight.w500),
                ).paddingSymmetric(horizontal: 10),
                Wrap(
                  children: [
                    Input(
                      controller: firstNameController,
                      label: "First Name",
                      keyBoardType: TextInputType.name,
                    ),
                    Input(
                        controller: secondNameController,
                        label: "Second Name",
                        keyBoardType: TextInputType.name),
                  ],
                ).paddingSymmetric(vertical: 5),
                Text(
                  "Description",
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 23, fontWeight: FontWeight.w500),
                ).paddingSymmetric(horizontal: 10),
                Wrap(
                  children: [
                    Input(
                      controller: descriptionController,
                      label: "Description",
                      keyBoardType: TextInputType.multiline,
                    ),
                  ],
                ).paddingSymmetric(vertical: 5),
                Text(
                  "Person's Information",
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 23, fontWeight: FontWeight.w500),
                ).paddingSymmetric(horizontal: 10),
                Wrap(
                  children: [
                    Input(
                      controller: emailController,
                      label: "Email",
                      keyBoardType: TextInputType.emailAddress,
                    ),
                    Input(
                      controller: phoneController,
                      label: "Phone",
                      keyBoardType: TextInputType.phone,
                    ),
                    Input(
                      controller: webSiteController,
                      label: "Web Site",
                      keyBoardType: TextInputType.url,
                    ),
                  ],
                ).paddingSymmetric(vertical: 5),
                Text(
                  "Meeting Information",
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 23, fontWeight: FontWeight.w500),
                ).paddingSymmetric(horizontal: 10),
                Wrap(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              DateTimePicker().datePicker(context);
                            },
                            label: Obx(() {
                              return Text(addAppointmentController
                                  .dateOfAppointment.value);
                            }),
                            icon: AppIconConstants.date,
                          ),
                          TextButton.icon(
                            onPressed: () {
                              DateTimePicker().timePicker(context);
                            },
                            label: Obx(() {
                              return Text(addAppointmentController
                                  .timeOfAppointment.value);
                            }),
                            icon: AppIconConstants.time,
                          ),
                        ],
                      ),
                    ).paddingSymmetric(horizontal: 5),
                    Input(
                        controller: locationController,
                        label: "Meeting Location",
                        keyBoardType: TextInputType.streetAddress),
                    Input(
                        controller: meetingGoalController,
                        label: "Meeting Goal",
                        keyBoardType: TextInputType.text),
                    Input(
                        controller: otherPersonController,
                        label: "Other Persons",
                        keyBoardType: TextInputType.name),
                  ],
                ).paddingSymmetric(vertical: 5),
                Text(
                  "Importance Level",
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 23, fontWeight: FontWeight.w500),
                ).paddingSymmetric(horizontal: 10),
                showImportanceStatus(),
                Row(
                  children: [
                    FilledButtons(
                        onPressed: () {
                          _addAppointment();
                          log("added");
                          Navigator.pop(context);
                        },
                        text: 'Add Appointment'),
                  ],
                )
              ],
            ),
          ).paddingSymmetric(horizontal: 5, vertical: 10),
        ),
      ),
    );
  }
}
