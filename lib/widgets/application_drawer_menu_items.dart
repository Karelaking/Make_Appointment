import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplicationDrawerMenuItems extends StatelessWidget {
  const ApplicationDrawerMenuItems(
      {super.key, required this.title, required this.icon});

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          children: [
            icon.paddingSymmetric(horizontal: 5),
            Text(title).paddingSymmetric(horizontal: 20, vertical: 10)
          ],
        ),
      ),
    );
  }
}
