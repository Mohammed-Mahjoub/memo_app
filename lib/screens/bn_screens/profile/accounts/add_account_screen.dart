import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class AddAccountScreen extends StatefulWidget {
  const AddAccountScreen({Key? key}) : super(key: key);

  @override
  State<AddAccountScreen> createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Account ID',
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
          Text(
            'Select the social media account you want activate',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 10.h),
          Divider(color: AppColors().grey, thickness: 2),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/snapshat.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/youtube.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/instagram.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/tiktok.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/apple.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/twitter.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/facebook.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/linkedin.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          AppButton(
            onPress: () {

            },
            text: 'Done',
            buttonColor: AppColors().purple,
          ),
        ],
      ),
    );
  }
}
