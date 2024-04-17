import 'package:get/get.dart';
import 'package:makeappointment/models/appointment_model.dart';

class AppointmentController extends GetxController {
  RxList appointmentList = <AppointmentModel>[].obs;

  addAppointment(AppointmentModel appointmentModel) {
    appointmentList.add(appointmentModel);
  }

  updateAppointment(int index, AppointmentModel appointmentModel) {
    appointmentList.insert(index, appointmentModel);
  }

  removeAppointment(int index) {
    appointmentList.removeAt(index);
  }
}
