import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';
import 'package:makeappointment/controllers/add_appointmment_controller.dart';
import 'package:makeappointment/controllers/appointment_controller.dart';
import 'package:makeappointment/controllers/image_picker_controller.dart';
import 'package:makeappointment/widgets/application_app_bar.dart';
import 'package:makeappointment/widgets/date_time_picker.dart';
import 'package:makeappointment/widgets/file_picker.dart';
import 'package:makeappointment/widgets/filled_button.dart';
import 'package:makeappointment/widgets/imporatnce_status.dart';
import 'package:makeappointment/widgets/input_field.dart';

class AddAppointments extends StatelessWidget {
  AddAppointments({super.key});

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController webSiteController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final AppointmentController appointmentController = Get.find();
  final AddAppointmentController addAppointmentController =
      Get.put(AddAppointmentController());

  @override
  Widget build(BuildContext context) {
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
                            label: const Text("Date"),
                            icon: AppIconConstants.date,
                          ),
                          TextButton.icon(
                            onPressed: () {
                              DateTimePicker().timePicker(context);
                            },
                            label: const Text("Time"),
                            icon: AppIconConstants.time,
                          ),
                        ],
                      ),
                    ).paddingSymmetric(horizontal: 5),
                    Input(
                        controller: firstNameController,
                        label: "Meeting Location",
                        keyBoardType: TextInputType.streetAddress),
                    Input(
                        controller: secondNameController,
                        label: "Meeting Goal",
                        keyBoardType: TextInputType.text),
                    Input(
                        controller: secondNameController,
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
                    FilledButtons(onPressed: () {}, text: 'Press'),
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
