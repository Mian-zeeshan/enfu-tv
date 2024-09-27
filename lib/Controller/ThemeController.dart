
import 'package:enfu_tech/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  String theme = "0";
  var isApplyTour = true;
  var primaryBlueColor = const Color(0xff2487f7);
  var primaryGreenColor = const Color(0xff49654e);
  var secondaryBlueColor = const Color(0xff1c5ba3);
  var secondaryGreenColor = const Color(0xff2c3d2f);
  var primaryDarkColor = const Color(0xff0c0f1a);
  var secondaryDarkColor = const Color(0xff0c0f1a);
  var primaryColor = const Color(0xff49654e);
  var secondaryColor = const Color(0xff2c3d2f);
  var transparentColor = const Color(0x00ffffff);
  var grayColor = const Color(0xffdedede);
  var whiteColor = const Color(0xffffffff);
  var cardColor = const Color(0xffffffff);
  var backgroundColor = const Color(0xfeedeffe).withOpacity(0.5);
  var blackColor = const Color(0xFF000000);
  var redColor = const Color(0xFFFE3636);
  var yellowColor = const Color(0xFFD5A326);
  var yellowLightColor = const Color(0xFFFFDB00);
  var ascentColor = const Color(0xFF3AE78C);
  var purpleColor = const Color(0xFF6B09B1);
  var brownColor = const Color(0xFFF47D35);
  var greenColor = const Color(0xFF3AB54A);
  var pinkColor = const Color(0xFFFC03BB);
  var bugundyColor = const Color(0xFF950B38);
  var textColor = const Color(0xFF161D31);
  var buttonColor = const Color(0xff49654e);
  var buttonTextColor = const Color(0xFFffffff);
  var box = GetStorage();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    updateData();
    getTour();
  }

  void updateData() async {
    await getTheme();
    update(["0"]);
    notifyChildrens();
  }


  int pageIndex = 0;
  setPageIndex(val) {
    pageIndex = val;
    update(['0']);
    notifyChildrens();
  }

  Future getTheme() async {
    var them = await box.read(storageTheme);
    if (them == null) {
      theme = "0";
      await box.write(storageTheme, them);
    } else {
      theme = them;
    }
    if (theme == "0") {
      // primaryColor = const Color(0xff1F2054);
      // primaryColor = Color(0xffD1AB66);
      // secondaryColor = const Color(0xff2c3d2f);
      primaryColor = Color(0xff3189CC);
      secondaryColor = Color(0xffF85F08);
      textColor = const Color(0xFF161D31);
      buttonColor = const Color(0xff49654e);
      buttonTextColor = const Color(0xFFffffff);
      backgroundColor = Color(0xffF6F6F6);
      // backgroundColor = whiteColor;
      // backgroundColor = const Color(0xfeedeffe).withOpacity(0.5);
      grayColor = const Color(0xffdedede);
      cardColor = const Color(0xffffffff);
    } else if (theme == "1") {
      primaryColor = const Color(0xff49654e);
      secondaryColor = const Color(0xff2c3d2f);
      textColor = const Color(0xFFf3f3f4);
      buttonColor = const Color(0xff49654e);
      buttonTextColor = const Color(0xFFffffff);
      backgroundColor = const Color(0xff0e1121);
      grayColor = const Color(0xff161D31);
      cardColor = const Color(0xff161D31);
    } else if (theme == "2") {
      primaryColor = primaryBlueColor;
      secondaryColor = secondaryBlueColor;
      textColor = const Color(0xFF161D31);
      buttonColor = primaryBlueColor;
      buttonTextColor = const Color(0xFFffffff);
      backgroundColor = const Color(0xfeedeffe).withOpacity(0.5);
      grayColor = const Color(0xffdedede);
      cardColor = const Color(0xffffffff);
    } else {
      primaryColor = primaryBlueColor;
      secondaryColor = secondaryBlueColor;
      textColor = const Color(0xFFf3f3f4);
      buttonColor = primaryBlueColor;
      buttonTextColor = const Color(0xFFffffff);
      backgroundColor = const Color(0xff0e1121);
      grayColor = const Color(0xff161D31);
      cardColor = const Color(0xff161D31);
    }
  }

  void getTour() async {
    var value = await box.read(isTour);
    if (value != null) {
      isApplyTour = false;
    } else {
      isApplyTour = true;
    }
    update(["0"]);
    notifyChildrens();
  }

  setTour() async {
    await box.write(isTour, "false");
  }
}
