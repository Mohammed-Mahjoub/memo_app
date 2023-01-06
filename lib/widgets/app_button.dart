import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class AppButton extends StatelessWidget {
  final void Function() onPress;
  final String text;
  final Color? textColor;
  final Color? buttonColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  const AppButton({
    required this.onPress,
    required this.text,
    this.textColor,
    this.buttonColor,
    this.fontSize,
    this.fontWeight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors().blue,
        maximumSize: Size(double.infinity, 48.h),
        minimumSize: Size(double.infinity, 48.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: fontSize ?? 15.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: textColor ?? AppColors().white,
        ),
      ),
    );
  }
}
