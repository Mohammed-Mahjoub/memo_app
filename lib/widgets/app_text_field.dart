import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.keyboardType,
    this.labelText,
    this.obscure = false,
    this.suffixIcon,
    this.onChange,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String hintText;
  final String? labelText;
  final TextInputType keyboardType;
  final bool obscure;
  final Widget? suffixIcon;
  final void Function(String x)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      obscureText: obscure,
      controller: textEditingController,
      keyboardType: keyboardType,
      style: GoogleFonts.poppins(),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        label: labelText!=null ? Text(labelText!) : null,
        labelStyle: GoogleFonts.poppins(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: AppColors().black,
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          fontSize: 13.sp,
          fontWeight: FontWeight.w300,
          color: AppColors().grey,
        ),
        helperStyle: GoogleFonts.poppins(fontSize: 13.sp),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors().grey, width: 1.0.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors().grey, width: 1.0.w),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors().grey, width: 1.0.w),
        ),
      ),
    );
  }
}
