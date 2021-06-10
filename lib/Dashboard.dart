import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:me/Constants/constants.dart';

import 'Constants/constant_widgets.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8.0.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(width: 10.0.w),
                  // customIcon(icon: deshImage, size: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      text('AMIT BUTANI',
                          fontWeight: FontWeight.w200,
                          fontSize: 40,
                          letterSpacing: 2.0),
                      text('Flutter Developer',
                          fontWeight: FontWeight.w400,
                          fontSize: 8,
                          color: colorWhite.withOpacity(0.5),
                          letterSpacing: 2.0),
                    ],
                  ),
                  // Spacer(),

                  Lottie.asset('assets/images/Blogging.json',
                      height: 40.0.h, width: 40.0.h),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                    opacity: 0.5, child: customIcon(icon: github, size: 1.5)),
                SizedBox(width: 2.0.w),
                Opacity(
                    opacity: 0.5, child: customIcon(icon: linkedin, size: 1.5)),
                SizedBox(width: 2.0.w),
                Opacity(
                    opacity: 0.5, child: customIcon(icon: facebook, size: 1.5))
              ],
            ),
            SizedBox(height: 4.0.h),
            Container(
              height: 40.0.h,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      // margin: EdgeInsets.all(3.0.h),
                      padding: const EdgeInsets.only(bottom: 28.0, top: 28.0),
                      child: FlutterLogo(size: 38.0.h),
                    ),
                  ),
                  Positioned(
                      bottom: 50,
                      left: 50,
                      child: CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        radius: 150,
                      )),
                  Container(
                      height: 40.0.h,
                      child: new ClipRect(
                          child: BackdropFilter(
                              filter: new ImageFilter.blur(
                                  sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                decoration: customBoxDecoration(
                                    color: Color(0xff121528).withOpacity(0.8),
                                    isBoxShadow: false),
                                margin: EdgeInsets.all(2.0.h),
                                height: 40.0.h,
                                child: Row(
                                  children: [
                                    // customIcon(icon: deshImage, size: 30.0),
                                    SizedBox(width: 10.0.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 70.0.w,
                                          child: text(
                                              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident',
                                              fontWeight: FontWeight.w200,
                                              fontSize: 5,
                                              textAlign: TextAlign.justify,
                                              letterSpacing: 1.0),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        text('ABOUT ME',
                                            fontWeight: FontWeight.w200,
                                            fontSize: 40,
                                            letterSpacing: 2.0),
                                      ],
                                    ),
                                    SizedBox(width: 10.0.w),

                                    // Spacer(),
                                  ],
                                ),
                              )))),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
