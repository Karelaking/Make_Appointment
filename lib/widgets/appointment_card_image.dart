import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppointmentCardImage extends StatelessWidget {
  const AppointmentCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadiusDirectional.all(
        Radius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image(
        image: const NetworkImage("https://placehold.co/600x400.png"),
        width: MediaQuery.of(context).size.width * 0.32,
        height: MediaQuery.of(context).size.height * 0.1,
      ),
    );
  }
}
