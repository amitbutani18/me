import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:nfl/Helpers/app_preference.dart';
import './constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

// Text Widget
Text text(String? text,
    {Color color = colorWhite,
    FontWeight fontWeight = FontWeight.normal,
    // String? fontFamily = 'OpenSans',
    double? fontSize = 16.0,
    double? letterSpacing = 0.0,
    TextAlign textAlign = TextAlign.center,
    TextDecoration decoration = TextDecoration.none}) {
  return Text(
    text!,
    textAlign: textAlign,
    style: GoogleFonts.lato(
        textStyle: TextStyle(
      decoration: decoration,
      color: color,
      height: 1.5,
      fontWeight: fontWeight,
      fontSize: fontSize!.sp,
      letterSpacing: letterSpacing,
    )),
  );
}

// Error SnackBar
errorSnackBar({@required String? content, Color textColor = colorWhite}) {
  return Get.snackbar('Oops!', content!,
      // snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red.withOpacity(0.7),
      colorText: textColor);
}

// Success SnackBar
successSnackBar({@required String? content, Color textColor = colorBlack}) {
  return Get.snackbar('Success', content!,
      backgroundColor: Colors.green[100]!.withOpacity(0.8),
      colorText: textColor);
}

// Text Button
GestureDetector customTextButton(
    {@required Function? callBack,
    @required double? height,
    @required double? width,
    @required String? btnText,
    double borderRadius = 100.0,
    FontWeight fontWeight = FontWeight.w700,
    Color color = primaryColor,
    Color textColor = colorWhite,
    double textSize = 12.0}) {
  return GestureDetector(
    onTap: () => callBack!(),
    child: Container(
      height: height,
      width: width,
      decoration: new BoxDecoration(
        border: Border.all(color: textColor == colorWhite ? color : textColor),
        borderRadius: BorderRadius.circular(borderRadius),
        // boxShadow: [
        //   BoxShadow(
        //       color: shadowColor,
        //       offset: Offset(0, 1),
        //       blurRadius: 10,
        //       spreadRadius: 4),
        // ],
        gradient: new LinearGradient(
            colors: [
              color,
              color,
            ],
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(0.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Center(
        child: text(btnText,
            fontSize: textSize,
            letterSpacing: 1.0,
            fontWeight: fontWeight,
            color: textColor),
      ),
    ),
  );
}

// Image Button
GestureDetector customImageButton(
    {@required Function? callBack,
    @required double? height,
    @required double? width,
    @required String? image,
    double? borderRadius = 100.0,
    FontWeight fontWeight = FontWeight.w700,
    Color color = primaryColor,
    Color textColor = colorWhite,
    double? textSize = 12.0}) {
  return GestureDetector(
    onTap: () => callBack!(),
    child: Container(
      height: height,
      width: width,
      decoration: new BoxDecoration(
        border: Border.all(color: textColor == colorWhite ? color : textColor),
        borderRadius: BorderRadius.circular(borderRadius!),
        // boxShadow: [
        //   BoxShadow(
        //       color: shadowColor,
        //       offset: Offset(0, 1),
        //       blurRadius: 10,
        //       spreadRadius: 4),
        // ],
        gradient: new LinearGradient(
            colors: [
              color,
              color,
            ],
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(0.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Center(
        child: Icon(
          Icons.arrow_forward,
          color: colorWhite,
        ),
      ),
    ),
  );
}

InputDecoration passInputDecoration(
    {String? hintText,
    String? prefixImage,
    String? suffixImage,
    Function? callBack,
    bool isSuffix = false,
    Color underLineColor = underLineColor}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(fontSize: 10.0.sp, color: textPrimaryColor),
    isDense: true,
    prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
    suffixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
    suffixIcon: isSuffix
        ? GestureDetector(
            onTap: () => callBack!(),
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                // isPassHide.value
                //     ? 'assets/icons/eye_open.png'
                // : '
                suffixImage!,
              ),
            ),
          )
        : text(''),
    // prefixIcon: Padding(
    //   padding: const EdgeInsets.only(right: 10),
    //   child: Image.asset(
    //     'assets/icons/$prefixImage.png',
    //   ),
    // ),
    contentPadding: EdgeInsets.only(top: 8, bottom: 8),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: underLineColor),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: underLineColor),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: underLineColor),
    ),
  );
}

// Input Decoration
InputDecoration inputDecoration(
    {String? hintText,
    String? suffixImage,
    Function? callBack,
    bool suffix = true,
    Color underLineColor = underLineColor}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(fontSize: 10.0.sp, color: textPrimaryColor),
    isDense: true,
    prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
    suffixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
    suffixIcon: suffix
        ? Padding(
            padding: EdgeInsets.only(right: 10),
            child: Container(
              height: 2.0.h,
              width: 2.0.h,
              child: Image.asset(
                suffixImage!,
              ),
            ),
          )
        : text(''),
    // prefixIcon: Padding(
    //   padding: const EdgeInsets.only(right: 10),
    //   child: Image.asset(
    //     prefixImage,
    //   ),
    // ),
    contentPadding: EdgeInsets.only(top: 8, bottom: 8, right: 0),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: underLineColor),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: underLineColor),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: underLineColor),
    ),
  );
}

// TextStyle For TextField
TextStyle customTextStyleTextField({Color textColor = textHeadingColor}) {
  return TextStyle(
      color: textColor, fontWeight: FontWeight.w600, fontSize: 11.0.sp);
}

// My Shadow
BoxShadow customBoxShadow() {
  return BoxShadow(
      color: Colors.grey[200]!,
      offset: Offset(0, 1),
      blurRadius: 6,
      spreadRadius: 1);
}

// Container Decoration
BoxDecoration customBoxDecoration({
  Color color = Colors.white,
  double? borderRadius = 10.0,
  bool isBoxShadow = true,
  bool isBorderEnable = false,
  bool isimageBg = false,
  String? bgImage,
  bool bottomLeftCircularBorder = true,
  bool bottomRightCircularBorder = true,
  bool topLeftCircularBorder = true,
  bool topRightCircularBorder = true,
}) {
  return BoxDecoration(
    color: color,
    boxShadow: isBoxShadow ? [customBoxShadow()] : [],
    image: isimageBg
        ? DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
            image: NetworkImage(
              bgImage!,
            ),
          )
        : null,
    border: isBorderEnable
        ? Border.all(color: Color(0xffECF0F4), width: 1)
        : Border.fromBorderSide(BorderSide.none),
    borderRadius: BorderRadius.only(
        bottomLeft:
            Radius.circular(bottomLeftCircularBorder ? borderRadius! : 0.0),
        bottomRight:
            Radius.circular(bottomRightCircularBorder ? borderRadius! : 0.0),
        topLeft: Radius.circular(topLeftCircularBorder ? borderRadius! : 0.0),
        topRight:
            Radius.circular(topRightCircularBorder ? borderRadius! : 0.0)),
  );
}

// Custom Icon
customIcon({String? icon, double? size = 2.0}) {
  return Container(
    height: size!.h,
    width: size.h,
    child: Image.asset(icon!),
  );
}

customTextWidgetForParagraph({String? content, double? size = 11.0}) {
  return text(content,
      color: textPrimaryColor,
      textAlign: TextAlign.start,
      fontSize: size,
      fontWeight: FontWeight.w500);
}

customTextWidgetForParagraph2({String? content}) {
  return text(content,
      color: textPrimaryColor,
      textAlign: TextAlign.start,
      fontSize: 9.5,
      fontWeight: FontWeight.w500);
}

customHeading1({String? heading, double? size = 11.0}) {
  return text(heading,
      color: textHeadingColor, fontSize: size, fontWeight: FontWeight.w700);
}

customHeading2({String? heading, Color? color}) {
  return text(heading,
      color: color!, fontSize: 11.0, fontWeight: FontWeight.w600);
}

cupertinoLoadingSpinner(String? progressString) {
  return Container(
    height: 19.0.h,
    width: 100.0.w,
    color: colorWhite,
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoActivityIndicator(),
          customHeading2(heading: progressString)
        ],
      ),
    ),
  );
}

//Basic Background
class CustomBackground extends StatelessWidget {
  const CustomBackground({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: 25.0.h,
            decoration: customBoxDecoration(
                borderRadius: 18,
                color: primaryColor,
                topLeftCircularBorder: false,
                topRightCircularBorder: false),
          ),
          child,
        ],
      )),
    );
  }
}

class TextWithBullet extends StatelessWidget {
  const TextWithBullet({
    Key? key,
    required this.string,
  }) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Icon(
              Icons.circle,
              size: 1.0.h,
              color: textPrimaryColor,
            ),
          ),
          SizedBox(width: 2.0.w),
          Expanded(child: customTextWidgetForParagraph2(content: string)),
        ],
      ),
    );
  }
}
