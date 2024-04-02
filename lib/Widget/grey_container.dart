// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors
import 'package:search_job_app/Widget/color_widget.dart';
import 'package:flutter/material.dart';

class CustomeContainer extends StatelessWidget {
  final String text;
  const CustomeContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        width: 89,
        height: 21,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Appcolor.background
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Appcolor.black,
                fontFamily: "Poppins",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5),
          ),
        ),
      ),
    );
  }
}
