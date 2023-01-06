import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class LoginOptionButton extends StatelessWidget {
  final void Function() onPress;
  final Widget body;
  final Color? buttonColor;

  const LoginOptionButton({
    required this.onPress,
    required this.body,
    this.buttonColor,
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
      child: body,
    );
  }
}
