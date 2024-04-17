import 'package:flutter/cupertino.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';

class ImportanceStatusIndicator extends StatelessWidget {
  const ImportanceStatusIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppIconConstants.important,
        AppIconConstants.important,
        AppIconConstants.important,
        AppIconConstants.important,
      ],
    );
  }
}
