// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:search_job_app/Widget/color_widget.dart';
import 'dart:core';

class HeadTextStyle extends StatelessWidget {
  final text;
  const HeadTextStyle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "Poppins",
          color: Appcolor.black,
          fontSize: 11.5,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.75),
    );
  }
}
