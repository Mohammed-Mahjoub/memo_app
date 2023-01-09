import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

import '../../../../../widgets/app_button.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
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
          const Divider(),
          SizedBox(height: 50.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Portrait Screen',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: AppColors().black,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Container(
                      height: 270.h,
                      width: 123.w,
                      decoration: BoxDecoration(
                          color: AppColors().purple,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: Colors.black,
                            width: 5,
                          )),
                      child: Center(
                        child: Text(
                          '9:16',
                          style: GoogleFonts.poppins(
                            fontSize: 25.sp,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Radio(
                        value: 'p',
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
                      'Wide Screen',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: AppColors().black,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Container(
                      height: 270.h,
                      width: 123.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: Colors.black,
                            width: 5,
                          )),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 90.h),
                        color: AppColors().purple,
                        child: Center(
                          child: Text(
                            '16:9',
                            style: GoogleFonts.poppins(
                              fontSize: 25.sp,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    Radio(
                        value: 'w',
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
              Navigator.pushNamed(context, '/wide_screen');
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
