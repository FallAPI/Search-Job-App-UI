// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:search_job_app/Widget/color_widget.dart';

class ValueTextStyle extends StatelessWidget {
  final text;
  const ValueTextStyle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "Poppins",
          color: Appcolor.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.75),
    );
  }
}
