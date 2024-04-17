import 'package:get/get.dart';

final DateTime date = DateTime.now();

class AddAppointmentController extends GetxController {
  RxString dateOfAppointment = "${date.day}/${date.month}/${date.year}".obs;
  RxString timeOfAppointment = "${date.hour}:${date.minute} 0:0".obs;
  RxDouble importanceLevel = 1.0.obs;

  setImportanceStatus(double value) {
    importanceLevel.value = value;
  }

  setDate(value) {
    dateOfAppointment.value = value.toString();
  }

  setTime(value) {
    timeOfAppointment.value = value.toString();
  }

  addAppointment() {}
}
