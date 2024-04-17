import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationTable extends StatelessWidget {
  const InformationTable(
      {super.key,
      required this.title,
      required this.value,
      required this.icon});

  final String title;
  final String value;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            icon,
            Text(
              title,
              style: GoogleFonts.poppins(),
            ).paddingSymmetric(horizontal: 10),
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            value,
            style: GoogleFonts.poppins(),
          ),
        ),
      ],
    ).paddingSymmetric(horizontal: 15, vertical: 15);
  }
}
