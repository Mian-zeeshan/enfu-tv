import 'package:chewie/chewie.dart';
import 'package:enfu_tech/Controller/ThemeController.dart';
import 'package:enfu_tech/utils/FontsUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;
  FontUtils fontUtils = FontUtils();
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('Assets/Video/enfu1.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      allowFullScreen: true,
      showControls: false,
      // fullScreenByDefault: true,
      // aspectRatio: 2.0 ,
      autoPlay: true,
      looping: true,
    );

    // ..initialize().then((_) {
    //   setState(() {});
    //   _controller.play();
    //   _controller.setVolume(0);
    //   _controller.
    //   _controller.setLooping(true);  // Ensures the video doesn't stop
    // });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        id: "0",
        builder: (theme) {
          return Scaffold(
              backgroundColor: theme.whiteColor,
              body: SizedBox(
                height: Get.height,
                child: Column(
                  children: [
                    Container(
                        height: 60.h,
                        decoration:
                            BoxDecoration(color: theme.whiteColor, boxShadow: [
                          BoxShadow(
                              color: theme.textColor.withOpacity(0.3),
                              spreadRadius: 1.0,
                              blurRadius: 20.0)
                        ]),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.w,
                            ),
                            Image.asset(
                              "Assets/Images/connecthrms.png",
                              height: 30.h,
                            )
                          ],
                        )),
                    Expanded(
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              width: Get.width,
                              color: theme.whiteColor,
                              height: 600.h,
                              child: CarouselSlider(
                                  options: CarouselOptions(
                                      onPageChanged: (index, reason) {},
                                      aspectRatio: 16 / 9,
                                      enableInfiniteScroll: false,
                                      viewportFraction: 0.96,
                                      autoPlay: true,
                                      enlargeCenterPage: true,
                                      autoPlayInterval:
                                          const Duration(seconds: 4),
                                      enlargeStrategy:
                                          CenterPageEnlargeStrategy.scale),
                                  items: [
                                    Container(
                                      width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                "Assets/Images/back.jpg",
                                              )),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: theme.whiteColor,
                                          boxShadow: [
                                            BoxShadow(
                                                color: theme.textColor
                                                    .withOpacity(0.3),
                                                spreadRadius: 1.0,
                                                blurRadius: 20.0)
                                          ]),
                                      child: Stack(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(child: Container()),
                                              SizedBox(
                                                width: 30.w,
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    // Text(
                                                    //   "",
                                                    //   style: TextStyle(
                                                    //       color: theme
                                                    //           .primaryColor,
                                                    //       fontSize: 50,
                                                    //       fontFamily: "Bebas",
                                                    //       height: 1.h,
                                                    //       fontWeight:
                                                    //           FontWeight.bold),
                                                    // ),
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    Text(
                                                      "HAPPY WORK",
                                                      style: TextStyle(
                                                          color: theme
                                                              .primaryColor,
                                                          fontSize: 50,
                                                          height: 1.h,
                                                          fontFamily: "Bebas",
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 5.h,
                                                    ),
                                                    Text(
                                                      "ANNIVERSARY",
                                                      style: TextStyle(
                                                          color: theme
                                                              .primaryColor,
                                                          fontSize: 50,
                                                          height: 1.h,
                                                          fontFamily: "Bebas",
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),

                                                    SizedBox(
                                                      height: 20.h,
                                                    ),

                                                    IntrinsicWidth(
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            "John Willam Son",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "BebasReqular",
                                                              color: theme
                                                                  .primaryColor,
                                                              fontSize: 20,
                                                              height: 1.h,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 2.h,
                                                          ),
                                                          Container(
                                                            height: 1.h,
                                                            color: theme
                                                                .primaryColor,
                                                          )
                                                        ],
                                                      ),
                                                    ),

                                                    Text(
                                                      "Marketing Lead",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "BebasReqular",
                                                          color: theme.textColor
                                                              .withOpacity(0.3),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),

                                                    SizedBox(
                                                      height: 50.h,
                                                    ),

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 30.w,
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            "John Willam Son has been with us for 5 fantastic years. Thank you for your dedication and hard work",
                                                            style: TextStyle(
                                                              color: theme
                                                                  .primaryColor,
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  "BebasReqular",
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                    // Column(
                                                    //   children: [

                                                    //   ],
                                                    // ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              )
                                            ],
                                          ),
                                          Positioned(
                                            bottom: -50,
                                            left: -50,
                                            child: Container(
                                              height: 330.h,
                                              width: 330.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: theme.primaryColor,
                                              ),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                      "Assets/Images/man.png")
                                                  // Container(height: 200.h,
                                                  // decoration: BoxDecoration(
                                                  //   shape: BoxShape.circle,
                                                  //   color: theme.whiteColor),
                                                  // width: 200.h,)
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                "Assets/Images/back.jpg",
                                              )),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: theme.whiteColor,
                                          boxShadow: [
                                            BoxShadow(
                                                color: theme.textColor
                                                    .withOpacity(0.3),
                                                spreadRadius: 1.0,
                                                blurRadius: 20.0)
                                          ]),
                                      child: Stack(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(child: Container()),
                                              SizedBox(
                                                width: 30.w,
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    Text(
                                                      "HAPPY",
                                                      style: TextStyle(
                                                          color: theme
                                                              .primaryColor,
                                                          fontSize: 70,
                                                          fontFamily: "Bebas",
                                                          height: 1.h,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Text(
                                                      "BIRTHDAY",
                                                      style: TextStyle(
                                                          color: theme
                                                              .primaryColor,
                                                          fontSize: 70,
                                                          height: 1.h,
                                                          fontFamily: "Bebas",
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),

                                                    SizedBox(
                                                      height: 20.h,
                                                    ),

                                                    IntrinsicWidth(
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            "John Willam Son",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "BebasReqular",
                                                              color: theme
                                                                  .primaryColor,
                                                              fontSize: 20,
                                                              height: 1.h,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 2.h,
                                                          ),
                                                          Container(
                                                            height: 1.h,
                                                            color: theme
                                                                .primaryColor,
                                                          )
                                                        ],
                                                      ),
                                                    ),

                                                    Text(
                                                      "Marketing Lead",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "BebasReqular",
                                                          color: theme.textColor
                                                              .withOpacity(0.3),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),

                                                    SizedBox(
                                                      height: 50.h,
                                                    ),

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 30.w,
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            "THE WHOLE TEAM WISHES YOU THE HAPPIEST OF BIRTHDAYS AND A GREAT YEAR.",
                                                            style: TextStyle(
                                                              color: theme
                                                                  .primaryColor,
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  "BebasReqular",
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                    // Column(
                                                    //   children: [

                                                    //   ],
                                                    // ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              )
                                            ],
                                          ),
                                          Positioned(
                                            bottom: -50,
                                            left: -50,
                                            child: Container(
                                              height: 330.h,
                                              width: 330.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: theme.primaryColor,
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                      // color: theme.whiteColor,
                                                      // height: 300.h,

                                                      child: Image.asset(
                                                          "Assets/Images/man.png"))
                                                  // Container(height: 200.h,
                                                  // decoration: BoxDecoration(
                                                  //   shape: BoxShape.circle,
                                                  //   color: theme.whiteColor),
                                                  // width: 200.h,)
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                "Assets/Images/back.jpg",
                                              )),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: theme.whiteColor,
                                          boxShadow: [
                                            BoxShadow(
                                                color: theme.textColor
                                                    .withOpacity(0.3),
                                                spreadRadius: 1.0,
                                                blurRadius: 20.0)
                                          ]),
                                      child: Stack(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(child: Container()),
                                              SizedBox(
                                                width: 30.w,
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    Text(
                                                      "HAPPY",
                                                      style: TextStyle(
                                                          color: theme
                                                              .primaryColor,
                                                          fontSize: 70,
                                                          fontFamily: "Bebas",
                                                          height: 1.h,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Text(
                                                      "BIRTHDAY",
                                                      style: TextStyle(
                                                          color: theme
                                                              .primaryColor,
                                                          fontSize: 70,
                                                          height: 1.h,
                                                          fontFamily: "Bebas",
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),

                                                    SizedBox(
                                                      height: 20.h,
                                                    ),

                                                    IntrinsicWidth(
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            "John Willam Son",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "BebasReqular",
                                                              color: theme
                                                                  .primaryColor,
                                                              fontSize: 20,
                                                              height: 1.h,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 2.h,
                                                          ),
                                                          Container(
                                                            height: 1.h,
                                                            color: theme
                                                                .primaryColor,
                                                          )
                                                        ],
                                                      ),
                                                    ),

                                                    Text(
                                                      "Marketing Lead",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "BebasReqular",
                                                          color: theme.textColor
                                                              .withOpacity(0.3),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),

                                                    SizedBox(
                                                      height: 50.h,
                                                    ),

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 30.w,
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            "THE WHOLE TEAM WISHES YOU THE HAPPIEST OF BIRTHDAYS AND A GREAT YEAR.",
                                                            style: TextStyle(
                                                              color: theme
                                                                  .primaryColor,
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  "BebasReqular",
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                    // Column(
                                                    //   children: [

                                                    //   ],
                                                    // ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              )
                                            ],
                                          ),
                                          Positioned(
                                            bottom: -50,
                                            left: -50,
                                            child: Container(
                                              height: 330.h,
                                              width: 330.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: theme.primaryColor,
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                      // color: theme.whiteColor,
                                                      // height: 300.h,

                                                      child: Image.asset(
                                                          "Assets/Images/man.png"))
                                                  // Container(height: 200.h,
                                                  // decoration: BoxDecoration(
                                                  //   shape: BoxShape.circle,
                                                  //   color: theme.whiteColor),
                                                  // width: 200.h,)
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                            )),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(20.h),
                                child: Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: theme.cardColor,
                                        boxShadow: [
                                          BoxShadow(
                                              color: theme.textColor
                                                  .withOpacity(0.1),
                                              spreadRadius: 1.0,
                                              blurRadius: 20.0)
                                        ]),
                                    // width: Get.width,

                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child:
                                          Chewie(controller: _chewieController),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        });
  }
}
