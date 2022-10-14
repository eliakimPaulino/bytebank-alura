// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  TextEditingController controlador = TextEditingController();
  final String labelText;
  final String hintText;
  final IconData? icon;
  Editor({
    Key? key,
    required this.controlador,
    required this.labelText,
    required this.hintText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        controller: controlador,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}