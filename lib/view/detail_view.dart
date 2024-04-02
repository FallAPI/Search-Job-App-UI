// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:search_job_app/Widget/color_widget.dart';
import 'package:search_job_app/Widget/grey_container.dart';
import 'package:search_job_app/Widget/headear_text_style.dart';
import 'package:search_job_app/Widget/value_text_style.dart';
import 'package:search_job_app/model/Job_list.dart';

class JobDetailScreen extends StatefulWidget {
  final Job job;
  const JobDetailScreen({super.key, required this.job});

  @override
  State<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        color: Appcolor.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back_rounded),
                                  iconSize: 24.0,
                                  onPressed: () => Navigator.pop(context),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isliked = !isliked;
                                    });
                                  },
                                  icon: Icon(
                                    isliked
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    widget.job.imgasset,
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    widget.job.title,
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Appcolor.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.2),
                                  ),
                                  Text(
                                    widget.job.company,
                                    style: TextStyle(
                                        color: Appcolor.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  Text(
                                    'Posted on ${widget.job.applydate}',
                                    style: TextStyle(
                                      color: Appcolor.black,
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 411,
                        height: 150,
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 25,
                        ),
                        color: Appcolor.white,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        HeadTextStyle(
                                            text: "apply before".toUpperCase()),
                                        ValueTextStyle(
                                            text: widget.job.applybefore)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        HeadTextStyle(
                                            text: "job nature".toUpperCase()),
                                        CustomeContainer(
                                            text: widget.job.jobnature)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          HeadTextStyle(
                                              text:
                                                  "salary range".toUpperCase()),
                                          ValueTextStyle(
                                              text: widget.job.paymentRate)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          HeadTextStyle(
                                              text:
                                                  "job location".toUpperCase()),
                                          ValueTextStyle(
                                              text: widget.job.location)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 225,
                        width: 411,
                        color: Appcolor.white,
                        padding: EdgeInsets.only(
                          left: 30,
                          top: 15,
                          right: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadTextStyle(
                                text: "job description".toUpperCase()),
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child:
                                  ValueTextStyle(text: widget.job.description),
                            ),
                            Row(
                              children: [
                                Text(
                                  "See More",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.25,
                                      color: Appcolor.blue),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Appcolor.blue,
                                  size: 16,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 400,
                        height: 150,
                        color: Appcolor.white,
                        padding: EdgeInsets.only(
                          top: 15,
                          left: 30,
                          right: 12,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadTextStyle(
                              text: "Roles Responbiliteis".toUpperCase(),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            ValueTextStyle(text: widget.job.role)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 8,
                    left: MediaQuery.of(context).size.width / 6,
                    right: MediaQuery.of(context).size.width / 6,
                    child: ElevatedButton(
                      onPressed: () {
                        //
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Appcolor.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          minimumSize: Size(250, 52)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                        ),
                        child: Text(
                          "apply now".toUpperCase(),
                          style: TextStyle(
                            color: Appcolor.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
