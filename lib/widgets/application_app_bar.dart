import 'package:flutter/material.dart';

class ApplicationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationAppBar({super.key, this.leading});

  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(leading: leading);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
