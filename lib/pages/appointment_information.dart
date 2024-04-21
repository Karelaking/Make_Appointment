import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';
import 'package:makeappointment/helpers/space.dart';
import 'package:makeappointment/models/appointment_model.dart';
import 'package:makeappointment/widgets/application_app_bar.dart';
import 'package:makeappointment/widgets/information_table.dart';

class AppointmentInformation extends StatelessWidget {
  const AppointmentInformation({
    super.key,
    required this.appointmentModel,
  });

  final AppointmentModel appointmentModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ApplicationAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  Image
            Image(
              width: MediaQuery.of(context).size.width,
              image: const NetworkImage("https://placehold.co/600x400.png"),
              fit: BoxFit.cover,
            ),

            //  Meeting Title
            Text(
              "${appointmentModel.firstName} ${appointmentModel.secondName}",
              style: GoogleFonts.poppins()
                  .copyWith(fontSize: 25, fontWeight: FontWeight.w600),
            ).paddingSymmetric(vertical: 15, horizontal: 15),

            //  Description
            appointmentModel.description.isNotEmpty
                ? SizedBox(
                    width: double.maxFinite,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(15),
                      ),
                      child: Text(
                        appointmentModel.description,
                        style: GoogleFonts.poppins(),
                      ).paddingSymmetric(vertical: 10, horizontal: 20),
                    ).paddingSymmetric(horizontal: 10, vertical: 5),
                  )
                : const SizedBox(),

            //  Other Information
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
              child: Column(
                children: [
                  InformationTable(
                      icon: AppIconConstants.phone,
                      callback: () {
                        debugPrint("Phone Print");
                      },
                      title: "Phone No",
                      value: appointmentModel.phone),
                  divider(),
                  InformationTable(
                      icon: AppIconConstants.email,
                      title: "Email",
                      value: appointmentModel.email),
                  divider(),
                  InformationTable(
                      icon: AppIconConstants.webSite,
                      title: "Web Site",
                      value: appointmentModel.website),
                ],
              ),
            ).paddingSymmetric(horizontal: 10, vertical: 5),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
              child: Column(
                children: [
                  InformationTable(
                    title: "Date",
                    value: appointmentModel.date,
                    icon: AppIconConstants.date,
                  ),
                  divider(),
                  InformationTable(
                    title: "Time",
                    value: appointmentModel.time,
                    icon: AppIconConstants.time,
                  ),
                  divider(),
                  InformationTable(
                    title: "Location",
                    value: appointmentModel.location,
                    icon: AppIconConstants.location,
                  ),
                ],
              ),
            ).paddingSymmetric(horizontal: 10, vertical: 5)
          ],
        ),
      ),
    );
  }
}
