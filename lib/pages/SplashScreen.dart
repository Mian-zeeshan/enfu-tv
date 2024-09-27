
import 'dart:async';

import 'package:enfu_tech/Controller/ThemeController.dart';
import 'package:enfu_tech/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';



class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {



  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 2), (timer) async {
      timer.cancel();
    Get.offAllNamed(homeRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(id: "0",builder: (theme) {
      EasyLoading.instance
        ..displayDuration = const Duration(milliseconds: 2000)
        ..indicatorType = EasyLoadingIndicatorType.wave
        ..loadingStyle = EasyLoadingStyle.custom
        ..indicatorSize = 25.0
        ..radius = 10.0
        ..maskType = EasyLoadingMaskType.black
        ..progressColor = theme.textColor
        ..backgroundColor = theme.cardColor
        ..indicatorColor = theme.textColor.withOpacity(0.8)
        ..textColor = theme.textColor
        ..maskColor = theme.cardColor.withOpacity(0.3)
        ..textPadding = EdgeInsets.symmetric(vertical: 20.h, horizontal: 45.w)
        // ..textStyle = fontUtils.label(theme.textColor)
        ..userInteractions = false
        ..dismissOnTap = false;

      return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: theme.backgroundColor,
        ),
      ),
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          color: theme.backgroundColor,
          child: Stack(
            children: [
         
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  decoration: BoxDecoration(
                      color: theme.backgroundColor.withOpacity(0.9)
                  ),
                  child: Animate(
                    delay: const Duration(milliseconds: 900),
                    effects: const [FadeEffect(), ScaleEffect()],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("Assets/Images/info.png", height: 60,),
                        SizedBox(height: 20.h,),
                        SpinKitWave(color: theme.primaryColor, size: 30.w,)
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
    });
  }

}