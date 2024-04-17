import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:makeappointment/models/appointment_model.dart';

class AppointmentDatabase {
  static Box<AppointmentModel> getAppointment() =>
      Hive.box<AppointmentModel>("Appointment");
}
