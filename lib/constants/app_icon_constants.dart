import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class AppIconConstants {
  static const important = Icon(
    CupertinoIcons.bookmark,
    size: 15,
  );
  static importantFill(context) => Icon(
        CupertinoIcons.bookmark_fill,
        size: MediaQuery.of(context).size.width * 0.05,
      );
  static const menu = Icon(CupertinoIcons.line_horizontal_3_decrease);
  static const location = Icon(CupertinoIcons.location_solid);
  static const add = Icon(CupertinoIcons.add);
  static const arrowBack = Icon(CupertinoIcons.back);
  static const date = Icon(CupertinoIcons.calendar);
  static const time = Icon(CupertinoIcons.clock);
  static const dotMenu = Icon(CupertinoIcons.ellipsis);
  static const delete = Icon(CupertinoIcons.delete_simple);
  static const edit = Icon(CupertinoIcons.pen);
  static const share = Icon(CupertinoIcons.share);
  static const home = Icon(CupertinoIcons.home);
  static const search = Icon(CupertinoIcons.search);
  static const settings = Icon(CupertinoIcons.settings_solid);
  static const about = Icon(CupertinoIcons.question_circle);
  static const account = Icon(CupertinoIcons.person_alt_circle);
  static const feedBack = Icon(CupertinoIcons.exclamationmark_circle);
  static const pickImage = Icon(CupertinoIcons.cloud_upload);
  static const phone = Icon(CupertinoIcons.phone);
  static const email = Icon(CupertinoIcons.mail);
  static const webSite = Icon(CupertinoIcons.globe);
}
