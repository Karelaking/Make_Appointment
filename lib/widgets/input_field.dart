import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Input extends StatelessWidget {
  const Input(
      {super.key,
      this.placeholder,
      required this.controller,
      this.isExpands = false,
      required this.label,
      this.keyBoardType = TextInputType.text});

  final String? placeholder;
  final TextEditingController controller;
  final bool isExpands;
  final String label;
  final TextInputType keyBoardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        expands: isExpands,
        maxLength: null,
        keyboardType: keyBoardType,
        maxLines: null,
        minLines: null,
        decoration: InputDecoration(
          label: Text(label),
          hintText: placeholder,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColorDark),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
