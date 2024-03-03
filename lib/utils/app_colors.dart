import 'package:flutter/material.dart';

class AppColors {
  static AppColors? _instance;
  AppColors._();
  static AppColors get instance => _instance ?? AppColors._();

  Color get errorColor => const Color(0xFFFF522C);
  Color get primaryColor => const Color(0xff4969FC);
  Color get secondaryColor => const Color(0xff00BA88);
  Color get boldGrey => const Color(0xFF667485);
  Color get lightGrey => const Color(0xFF8FA4BD);
  Color get solvedDetailDividerColor => const Color(0xFFEDF0FF);
  Color get filterSelectedColor => const Color(0xFFEDF0FE);
  Color get validatorErrorColor => const Color(0xFFFF522C);

  // My Colors ---- fahrican
  Color get ratingColor => const Color(0xFF47C087);
  Color get buttonSlider5 => const Color(0xFFEB443F);
  Color get buttonSlider4 => const Color(0xFFE9634F);
  Color get buttonSlider3 => const Color(0xFFE68561);
  Color get buttonSlider2 => const Color(0xFFE4A170);
  Color get buttonSlider1 => const Color(0xFFE0BD7F);
  Color get white => const Color(0xFFFFFFFF);
  Color get textColor => const Color(0xFF292D32);
  Color get textMidDarkColor => const Color(0xFF667485);
  Color get textDarkColor => const Color(0xFF2D3339);
  Color get textLightColor => const Color(0xFF546374);
  Color get processColor => const Color(0xFF667485);
  Color get periodColor => const Color(0xffFFB800);
  Color get dividerColor => const Color.fromARGB(255, 212, 211, 211);
  Color get scaffoldBackgroundColor => const Color(0xffF9F9F9);

  //Email otp view
  Color get emailOtpSuccesCodeStyleColor => const Color(0xff2d3339);

  Color get veryLightGrey => const Color(0xFFE5E5E7);
  Color get hashtagBackgroundColor => const Color(0xffEFF3F7);
  Color get appBarTextColor => Colors.black;
  Color get bottomNavigationBarUnSelectedItemColor => Colors.grey;
  Color get appBarColors => Colors.white;
  Color get iconColor => Colors.black;
  Color get indicatorColor => primaryColor;
  Color get solvedProblemContainerColor => const Color(0xff00be84);
  Color get homeCardBackgroundColor => Colors.grey.shade100;
  Color get rateTextBackgroundColor => const Color(0xffdae5ff);
  Color get unsolvedProblemContainerColor => const Color(0xff009dff);
  Color get borderSideColor => const Color(0xff009dff);

  Color get homePageSearchColor => const Color.fromRGBO(239, 240, 246, 1);

  Color get circularProgressColorInButton => Colors.white;

  Color get alertDialogCancelBtnColor => Colors.red;
  Color get communityLimitColor => const Color(0xFFF09103);
  Color get textFormFieldFillColor => const Color(0xffF2F2F2);
  Color get textFormFieldLabelColor => const Color(0xff8092A8);

  Color get tabBarSelectedLabelStyleColor => primaryColor;
  Color get tabBarUnselectedLabelStyleColor => const Color(0xFF8FA4BD);

  Color get voteContainerBorderColor => const Color(0xffF2F2F2);

  // STYLES
  TextStyle get semiBold16Styles =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.75);
  TextStyle get faqDescriptionStyle => const TextStyle(
      fontFamily: "DMSans-Regular",
      fontSize: 12,
      letterSpacing: 0.4,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(102, 116, 133, 1));
  TextStyle get faqTitleStyle => const TextStyle(
      fontFamily: "DMSans-Regular",
      fontSize: 14,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(73, 105, 252, 1));
  TextStyle get faqAppBarTitleStyle => const TextStyle(
      fontFamily: "DMSans-Medium",
      fontSize: 16,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(41, 45, 50, 1));
  TextStyle get profileTitleStyle => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(128, 146, 168, 1),
      letterSpacing: 0.5);

  //OnBoard
  TextStyle get onBoardTitleStyles => const TextStyle(fontSize: 22, fontWeight: FontWeight.w500);
  TextStyle get onBoardSubtitleStyles => const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.50, color: Color(0xFF667485));

  //Vote View
  TextStyle get voteViewSubtitleStyles => const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.1, color: Color(0xFF667485));

  TextStyle get ratingStyles => const TextStyle(fontSize: 11, fontWeight: FontWeight.w400);
  TextStyle get ratingAvarageStyles => TextStyle(
        color: boldGrey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      );

  //Notification View
  TextStyle get notificationTitleStyle =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF292D32));
  TextStyle get notificationTitleBoldStyle =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF292D32));
}
