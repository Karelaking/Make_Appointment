import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:makeappointment/models/appointment_model.dart';
import 'package:makeappointment/pages/application.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await Hive.initFlutter();
  Hive.registerAdapter(AppointmentModelAdapter());
  await Hive.openBox<AppointmentModel>('Appointment');
  runApp(const Application());
}
