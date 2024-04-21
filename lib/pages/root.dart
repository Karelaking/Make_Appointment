import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';
import 'package:makeappointment/controllers/appointment_controller.dart';
import 'package:makeappointment/pages/add_appointments.dart';
import 'package:makeappointment/responsive/desktop_layout.dart';
import 'package:makeappointment/responsive/mobile_layout.dart';
import 'package:makeappointment/responsive/responsive.dart';
import 'package:makeappointment/responsive/tablet_layout.dart';
import 'package:makeappointment/widgets/application_app_bar.dart';
import 'package:makeappointment/widgets/application_drawer.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  final AppointmentController appointmentController =
      Get.put(AppointmentController());

  @override
  void dispose() {
    Hive.box('Appointment').close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar(
        actions: [
          IconButton(onPressed: () {}, icon: AppIconConstants.bell),
          IconButton(onPressed: () {}, icon: AppIconConstants.dotMenuVertical),
        ],
        leading: Hero(
          tag: "drawer",
          child: Builder(
            builder: (context) {
              return CupertinoButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: AppIconConstants.menu,
              );
            },
          ),
        ),
      ),
      drawer: const ApplicationDrawer(),
      body: Responsive(
        mobileScaffold: MobileLayout(),
        tabletScaffold: const TabletLayout(),
        desktopScaffold: const DesktopLayout(),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "addAppointments",
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
        child: AppIconConstants.add,
      ),
    );
  }
}
