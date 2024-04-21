import 'package:flutter/material.dart';

class ApplicationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationAppBar({super.key, this.leading, this.actions});

  final Widget? leading;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      actions: actions,
      toolbarHeight: MediaQuery.of(context).size.height * 0.4,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
