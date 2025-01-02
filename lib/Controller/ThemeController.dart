
import 'package:enfu_tech/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  String theme = "0";
  var isApplyTour = true;
  var primaryBlueColor = Color(0xff2487f7);
  var primaryGreenColor = Color(0xff49654e);
  var secondaryBlueColor = Color(0xff1c5ba3);
  var secondaryGreenColor = Color(0xff2c3d2f);
  var primaryDarkColor = Color(0xff0c0f1a);
  var secondaryDarkColor = Color(0xff0c0f1a);
  var primaryColor = Color(0xff49654e);
  var secondaryColor = Color(0xff2c3d2f);
  var transparentColor = Color(0x00ffffff);
  var grayColor = Color(0xffdedede);
  var whiteColor = Color(0xffffffff);
  var cardColor = Color(0xffffffff);
  var backgroundColor = Color(0xfeedeffe).withOpacity(0.5);
  var blackColor = Color(0xFF000000);
  var redColor = Color(0xFFFE3636);
  var yellowColor = Color(0xFFD5A326);
  var yellowLightColor = Color(0xFFFFDB00);
  var ascentColor = Color(0xFF3AE78C);
  var purpleColor = Color(0xFF6B09B1);
  var brownColor = Color(0xFFF47D35);
  var greenColor = Color(0xFF3AB54A);
  var darkGreenColor = Color(0xFF18331B);
  var pinkColor = Color(0xFFFC03BB);
  var bugundyColor = Color(0xFF950B38);
  var textColor = Color(0xFF161D31);
  var buttonColor = Color(0xff49654e);
  var buttonTextColor = Color(0xFFffffff);
  var box = GetStorage();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    updateData();
 
  }

  updateWidget() {
    update(['10']);
    notifyChildrens();
  }

  void updateData() async {
    await getTheme();
    update(["0"]);
    notifyChildrens();
  }

  updateTextWidget() {
    update(['100']);
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
      primaryColor = Color(0xff49654e);
      secondaryColor = Color(0xff2c3d2f);
      ;
      textColor = Color(0xFF161D31);
      buttonColor = Color(0xff49654e);
      buttonTextColor = Color(0xFFffffff);
      backgroundColor = Color(0xfeedeffe).withOpacity(0.5);
      grayColor = Color(0xffdedede);
      cardColor = Color(0xffffffff);
    } else if (theme == "1") {
      primaryColor = Color(0xff49654e);
      secondaryColor = Color(0xff2c3d2f);
      textColor = Color(0xFFf3f3f4);
      buttonColor = Color(0xff49654e);
      buttonTextColor = Color(0xFFffffff);
      backgroundColor = Color(0xff0e1121);
      grayColor = Color(0xff161D31);
      cardColor = Color(0xff161D31);
    } else if (theme == "2") {
      primaryColor = primaryBlueColor;
      secondaryColor = secondaryBlueColor;
      textColor = Color(0xFF161D31);
      buttonColor = primaryBlueColor;
      buttonTextColor = Color(0xFFffffff);
      backgroundColor = Color(0xfeedeffe).withOpacity(0.5);
      grayColor = Color(0xffdedede);
      cardColor = Color(0xffffffff);
    } else {
      primaryColor = primaryBlueColor;
      secondaryColor = secondaryBlueColor;
      textColor = Color(0xFFf3f3f4);
      buttonColor = primaryBlueColor;
      buttonTextColor = Color(0xFFffffff);
      backgroundColor = Color(0xff0e1121);
      grayColor = Color(0xff161D31);
      cardColor = Color(0xff161D31);
    }
  }

}
