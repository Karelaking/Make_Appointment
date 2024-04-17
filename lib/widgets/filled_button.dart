import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class FilledButtons extends StatelessWidget {
  const FilledButtons({super.key, required this.text, required this.onPressed});

  final String text;
  final Callback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(15),
            ),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(text).paddingSymmetric(vertical: 15),
      ).paddingSymmetric(horizontal: 10, vertical: 10),
    );
  }
}
