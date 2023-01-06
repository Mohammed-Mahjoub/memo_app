import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  String? _type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Select the option',
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
          SizedBox(height: 25.h),
          Divider(color: AppColors().grey, thickness: 2),
          SizedBox(height: 50.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Phone number',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: AppColors().black,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors().purple,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.phone,
                          size: 50,
                          color: AppColors().white,
                        ),
                      ),
                    ),
                    Radio(
                        value: 'M',
                        groupValue: _type,
                        onChanged: (String? value) {
                          setState(() => _type = value);
                        }),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Email address',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: AppColors().black,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors().purple,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.email_outlined,
                          size: 50,
                          color: AppColors().white,
                        ),
                      ),
                    ),
                    Radio(
                        value: 'E',
                        groupValue: _type,
                        onChanged: (String? value) {
                          setState(() => _type = value);
                        }),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          AppButton(
            onPress: () {
              if (_type != null) {
                _type == 'M'
                    ? Navigator.pushNamed(context, '/mobile_forget_screen')
                    : Navigator.pushNamed(context, '/email_forget_screen');
              }
            },
            text: 'Next',
            buttonColor: AppColors().purple,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
