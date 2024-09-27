import 'package:enfu_tech/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class FontUtils {

  h1(color){
    return TextStyle(
        color: color,
        fontSize: fsHeading1.sp,
        fontWeight: fwHeading1,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  h2(color){
    return TextStyle(
        color: color,
        fontSize: fsHeading2.sp,
        fontWeight: fwHeading2,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  h3(color){
    return TextStyle(
        color: color,
        fontSize: fsHeading3.sp,
        fontWeight: fwHeading3,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  h4(color){
    return TextStyle(
        color: color,
        fontSize: fsHeading4.sp,
        fontWeight: fwHeading4,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  h5(color, {underline = false}){
    return TextStyle(
        color: color,
        fontSize: fsHeading5.sp,
        fontWeight: fwHeading5,
        decoration: underline ? TextDecoration.underline :TextDecoration.none,
        decorationColor: color,
        fontFamily: fontFamily
    );
  }

  h6(color){
    return TextStyle(
        color: color,
        fontSize: fsHeading6.sp,
        fontWeight: fwHeading6,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  h6Bold(color, {underline = false}){
    return TextStyle(
        color: color,
        fontSize: fsHeading6.sp,
        fontWeight: FontWeight.w600,
        decoration: underline ? TextDecoration.underline :TextDecoration.none,
        decorationColor: color,
        fontFamily: fontFamily
    );
  }

  h6BoldItalic(color){
    return TextStyle(
        color: color,
        fontSize: fsHeading6.sp,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  description(color, {underline = false}){
    return TextStyle(
        color: color,
        fontSize: fsDesc.sp,
        fontWeight: FontWeight.normal,
        decoration: underline ? TextDecoration.underline :TextDecoration.none,
        decorationColor: color,
        fontFamily: fontFamily
    );
  }

  label(color, {underline = false}){
    return TextStyle(
        color: color,
        fontSize: fsLabel.sp,
        fontWeight: FontWeight.normal,
        decoration: underline ? TextDecoration.underline :TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  boldLabel(color, {underline = false}){
    return TextStyle(
        color: color,
        fontSize: fsLabel.sp,
        fontWeight: FontWeight.bold,
        decoration: underline ? TextDecoration.underline :TextDecoration.none,
        decorationColor: color,
        fontFamily: fontFamily
    );
  }

  boldDescription(color){
    return TextStyle(
        color: color,
        fontSize: fsDesc.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  boldItalicDescription(color){
    return TextStyle(
        color: color,
        fontSize: fsDesc.sp,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  boldSmall(color){
    return TextStyle(
        color: color,
        fontSize: fsSmall.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  small(color){
    return TextStyle(
        color: color,
        fontSize: fsSmall.sp,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  linkStyle(color){
    return TextStyle(
        color: color,
        fontSize: fsSmall.sp,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
        fontFamily: fontFamily
    );
  }

  xSmall(color){
    return TextStyle(
        color: color,
        fontSize: fsxSmall.sp,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

  underlineSmall(color){
    return TextStyle(
        color: color,
        fontSize: fsSmall.sp,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
        decorationColor: color,
        fontFamily: fontFamily
    );
  }

  buttonStyle(color){
    return TextStyle(
        color: color,
        fontSize: fsButton.sp,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none,
        fontFamily: fontFamily
    );
  }

}