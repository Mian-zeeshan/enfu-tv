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
              body: Container(
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
                            width: 10.w,
                          ),
                          Image.asset(
                            "Assets/Images/enfu-2.png",
                            height: 40.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Make the future bright with",
                            style: fontUtils.label(theme.textColor),
                          ),
                          Text(
                            " Lithium Batteries",
                            style: fontUtils.label(theme.secondaryColor),
                          ),
                          Spacer(),
                          IntrinsicHeight(
                            child: Container(
                              // color: theme.primaryColor,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20.h,
                                    backgroundColor:
                                        theme.secondaryColor.withOpacity(0.09),
                                    child: Center(
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: theme.secondaryColor,
                                        size: 20.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "73-Karim Block,",
                                        style:
                                            fontUtils.label(theme.primaryColor),
                                      ),
                                      Text(
                                        "Allama Iqbal Town, Lahore, Pakistan",
                                        style:
                                            fontUtils.label(theme.primaryColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          IntrinsicHeight(
                            child: Container(
                              // color: theme.primaryColor,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20.h,
                                    backgroundColor:
                                        theme.secondaryColor.withOpacity(0.09),
                                    child: Center(
                                      child: Icon(
                                        Icons.phone_outlined,
                                        color: theme.secondaryColor,
                                        size: 20.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "+924235415252",
                                        style:
                                            fontUtils.label(theme.primaryColor),
                                      ),
                                      Text(
                                        "+924235415252",
                                        style:
                                            fontUtils.label(theme.primaryColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      ),
                    ),
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
                                      onPageChanged: (index, reason) {
                                        print(index);
                                      },
                                      aspectRatio: 16 / 9,
                                      enableInfiniteScroll: false,
                                      viewportFraction: 0.96,
                                      autoPlay: true,
                                      enlargeCenterPage: true,
                                      autoPlayInterval: Duration(seconds: 5),
                                      enlargeStrategy:
                                          CenterPageEnlargeStrategy.scale),
                                  items: [
                                  //ceo page here 
                                    Container(
                                      width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,

                                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                child: Image.asset(
                                              "Assets/Images/ceo.png",
                                              height: 250.h,
                                            )),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "CEO Message",
                                                    style: fontUtils
                                                        .label(theme.textColor),
                                                  ),
                                                  Text(
                                                    "Welcome to Enfu Technology",
                                                    style: fontUtils
                                                        .h6(Color(0xff090029)),
                                                  ),
                                                  Text(
"As CEO, I am thrilled to lead a talented team of innovators, engineers, and industry experts who share a common goal to electrify a sustainable future.\nAt Enfu Technology, we are passionate about harnessing the power of lithium batteries to transform the way we live, work, and interact with our planet.We are driven by a relentless pursuit of innovation, a commitment to excellence, and a dedication to making a positive impact on the environment and society."
                                                  ,  style: fontUtils.label(theme
                                                        .textColor
                                                        .withOpacity(0.5)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                   

                                    Container(
                                       width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                          child: Column(
                                            children: [
                                              Image.asset("Assets/Images/p1.jpg",height: 350.h,),

                                              Text("Enfu-12100",style: fontUtils.h5(theme.secondaryColor),),
                                                Text('''
Application:- Solar/Ups
Capacity:- 12V, 100AH
Warranty:- 3Years ''',style: fontUtils.description(theme.textColor.withOpacity(0.3)),)
                                            ],
                                          ),
                                    ),
                                     Container(
                                       width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                          child: Column(
                                            children: [
                                              Image.asset("Assets/Images/p2.jpg",height: 350.h,),

                                              Text("Enfu-12200",style: fontUtils.h5(theme.secondaryColor),),
                                                Text('''
Application:- Solar/Ups
Capacity:- 12V, 200AH
Warranty:- 3Years''',style: fontUtils.description(theme.textColor.withOpacity(0.3)),)
                                            ],
                                          ),
                                    ),
                                  
                                    Container(
                                       width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                          child: Column(
                                            children: [
                                              Image.asset("Assets/Images/p3.jpg",height: 350.h,),

                                              Text("Enfu-24100",style: fontUtils.h5(theme.secondaryColor),),
                                                Text('''
Application:- Solar/Ups
Capacity:- 24V, 100AH
Warranty:- 3Years''',style: fontUtils.description(theme.textColor.withOpacity(0.3)),)
                                            ],
                                          ),
                                    ),
                                 
                                    Container(
                                       width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                          child: Column(
                                            children: [
                                              Image.asset("Assets/Images/p1.jpg",height: 350.h,),

                                              Text("Enfu-24200",style: fontUtils.h5(theme.secondaryColor),),
                                                Text('''
Application:- Solar/Ups
Capacity:- 24V, 200AH
Warranty:- 3Years''',style: fontUtils.description(theme.textColor.withOpacity(0.3)),)
                                            ],
                                          ),
                                    ),
                                
                                    Container(
                                       width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                          child: Column(
                                            children: [
                                              Image.asset("Assets/Images/p2.jpg",height: 350.h,),

                                              Text("Enfu-48100",style: fontUtils.h5(theme.secondaryColor),),
                                                Text('''
Application:- Solar
Capacity:- 48V, 100AH
Warranty:- 3Years''',style: fontUtils.description(theme.textColor.withOpacity(0.3)),)
                                            ],
                                          ),
                                    ),
                                 
                                    Container(
                                       width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                          child: Column(
                                            children: [
                                              Image.asset("Assets/Images/p3.jpg",height: 350.h,),

                                              Text("Enfu-48200",style: fontUtils.h5(theme.secondaryColor),),
                                                Text('''
Application:- Solar
Capacity:- 48V, 200AH
Warranty:- 3Years ''',style: fontUtils.description(theme.textColor.withOpacity(0.3)),)
                                            ],
                                          ),
                                    ),
                               
                                     Container(
                                       width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                          child: Column(
                                            children: [
                                              Image.asset("Assets/Images/p1.jpg",height: 350.h,),

                                              Text("Enfu-48100",style: fontUtils.h5(theme.secondaryColor),),
                                                Text('''
Application:- Solar/Ups
Capacity:- 51.2V, 100AH
Warranty:- 3Years''',style: fontUtils.description(theme.textColor.withOpacity(0.3)),)
                                            ],
                                          ),
                                    ),
                                    Container(
                                       width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                          child: Column(
                                            children: [
                                              Image.asset("Assets/Images/p2.jpg",height: 350.h,),

                                              Text("Enfu-48200",style: fontUtils.h5(theme.secondaryColor),),
                                                Text('''
Application:- Solar
Capacity:- 51.2V, 200AH
Warranty:- 3Years ''',style: fontUtils.description(theme.textColor.withOpacity(0.3)),)
                                            ],
                                          ),
                                    ),
                                    Container(
                                       width: Get.width,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      margin: EdgeInsets.all(20.h),
                                      decoration: BoxDecoration(
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
                                          child: Column(
                                            children: [
                                              Image.asset("Assets/Images/p3.jpg",height: 350.h,),

                                              Text("Enfu-6025",style: fontUtils.h5(theme.secondaryColor),),
                                                Text('''
Application:- Solar/Ups
Capacity:- 60V, 25AH
Warranty:- 3Years''',style: fontUtils.description(theme.textColor.withOpacity(0.3)),)
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
