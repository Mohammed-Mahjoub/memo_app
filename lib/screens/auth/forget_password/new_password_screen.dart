import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/auth/forget_password/verification_code_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  late TextEditingController _emailController;
  Color bColor = AppColors().wGrey;
  Color tColor = AppColors().grey;
  bool obscure = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Create new password',
          style: GoogleFonts.poppins(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            color: AppColors().black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors().black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 30.h),
          Text(
            'New Password',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 10.h),
          AppTextField(
            textEditingController: _emailController,
            labelText: 'Enter new password',
            hintText: '********',
            keyboardType: TextInputType.text,
            fill: Colors.transparent,
            obscure: obscure,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
            ),
            onChange: (String x) {
              if (_emailController.text.isNotEmpty) {
                setState(() {
                  bColor = AppColors().purple;
                  tColor = AppColors().white;
                });
              } else {
                setState(() {
                  bColor = AppColors().wGrey;
                  tColor = AppColors().grey;
                });
              }
            },
          ),
          SizedBox(height: 10.h),
          Text(
            'Your password must have at least:',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(
                height: 15.h,
                width: 15.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: AppColors().grey,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Text(
                '8 characters (20 Max)',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors().grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(
                height: 15.h,
                width: 15.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: AppColors().grey,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Text(
                '1 letter and 1 number',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors().grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(
                height: 15.h,
                width: 15.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: AppColors().grey,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Text(
                '1 special character (Example: # ? ! \$ & @)',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors().grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          AppButton(
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerificationCodeScreen(
                      appBarText: 'Email verification',
                      bodyText:
                          'We have sent code to you email: Ta***92@gmail.com',
                    ),
                  ));
            },
            text: 'Reset password',
            buttonColor: bColor,
            fontWeight: FontWeight.w500,
            textColor: tColor,
          ),
        ],
      ),
    );
  }
}
