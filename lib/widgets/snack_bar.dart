import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

showSnackBar(context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.cyan.shade100,
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      showCloseIcon: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      content: Text(
        content,
        style: GoogleFonts.poppins(),
      ),
    ),
  );
}
