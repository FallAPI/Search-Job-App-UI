// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, constant_identifier_names, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:search_job_app/Widget/color_widget.dart';
import 'package:search_job_app/Widget/grey_container.dart';
import 'package:search_job_app/view/detail_view.dart';
import 'package:search_job_app/model/Job_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isNotificationPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.03,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/image/Ellipse2.png',
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        isNotificationPressed
                            ? Icons.notifications_rounded
                            : Icons.notifications_none_rounded,
                        size: MediaQuery.of(context).size.width * 0.07,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            isNotificationPressed = !isNotificationPressed;
                          },
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${jobList.length} JOBS FOUND',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          letterSpacing: 0.75),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "All Relevance",
                          style: TextStyle(
                              color: Appcolor.blue,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              letterSpacing: 0.25),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Appcolor.blue,
                          size: MediaQuery.of(context).size.width * 0.05,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  itemBuilder: (context, index) {
                    final Job job = jobList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return JobDetailScreen(job: job);
                        }));
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.18,
                        child: Card(
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  job.imgasset,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                title: Text(
                                  job.title,
                                  style: TextStyle(
                                      color: Appcolor.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.045,
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(
                                  job.company,
                                  style: TextStyle(
                                      color: Appcolor.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.035,
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomeContainer(text: job.jobnature),
                                    Text(
                                      job.paymentRate,
                                      style: TextStyle(
                                        color: Appcolor.black,
                                        fontFamily: "poppins",
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.035,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: jobList.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
