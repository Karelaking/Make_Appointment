import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makeappointment/widgets/application_app_bar.dart';

class AppointmentInformation extends StatelessWidget {
  const AppointmentInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ApplicationAppBar(),
      body: Image(
        width: MediaQuery.of(context).size.width,
        image: const NetworkImage("https://placehold.co/600x400.png"),
        fit: BoxFit.cover,
      ),
    );
  }
}
