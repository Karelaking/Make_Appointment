import 'package:get/get.dart';
import 'package:intl/intl.dart';

final DateTime date = DateTime.now();

class AddAppointmentController extends GetxController {
  RxString dateOfAppointment = DateFormat().add_yMd().format(date).obs;
  RxString timeOfAppointment = DateFormat().add_jmv().format(date).obs;
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
