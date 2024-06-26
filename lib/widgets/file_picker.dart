import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';

class ImagePickers extends StatelessWidget {
  ImagePickers({super.key});

  final _picker = ImagePicker();

  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {}
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(20),
      ),
      child: GestureDetector(
        child: SizedBox(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tap here",
                style: GoogleFonts.poppins()
                    .copyWith(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              AppIconConstants.pickImage.paddingSymmetric(vertical: 15)
            ],
          ),
        ),
      ),
    ).paddingSymmetric(horizontal: 5, vertical: 10);
  }
}
