import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/login_option_button.dart';

class RegisterOptionScreen extends StatelessWidget {
  const RegisterOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Sign in',
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
            '''Create happy times by playing with your frinds And share the best moments with them and more on Memo.''',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 40.h),
          LoginOptionButton(
            onPress: () {
              Navigator.pushNamed(context, '/register_screen');
            },
            buttonColor: AppColors().purple,
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 24.h,
                  width: 24.w,
                  image: const AssetImage(
                    'assets/images/person.png',
                  ),
                ),
                SizedBox(width: 17.w),
                Text(
                  'Email / Username',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '               .',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors().grey,
                  decorationThickness: 4,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'or continue with',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().grey,
                  ),
                ),
              ),
              Text(
                '               .',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors().grey,
                  decorationThickness: 4,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          LoginOptionButton(
            onPress: () {},
            buttonColor: AppColors().white,
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 24.h,
                  width: 24.w,
                  image: const AssetImage(
                    'assets/images/google.png',
                  ),
                ),
                SizedBox(width: 17.w),
                Text(
                  'Continue with google',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors().black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          LoginOptionButton(
            onPress: () {},
            buttonColor: AppColors().white,
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 24.h,
                  width: 24.w,
                  image: const AssetImage(
                    'assets/images/instagram.png',
                  ),
                ),
                SizedBox(width: 17.w),
                Text(
                  'Continue with instagram',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors().black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          LoginOptionButton(
            onPress: () {},
            buttonColor: AppColors().white,
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 24.h,
                  width: 24.w,
                  image: const AssetImage(
                    'assets/images/twitter.png',
                  ),
                ),
                SizedBox(width: 17.w),
                Text(
                  'Continue with twitter',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors().black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          LoginOptionButton(
            onPress: () {},
            buttonColor: AppColors().white,
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 24.h,
                  width: 24.w,
                  image: const AssetImage(
                    'assets/images/facebook.png',
                  ),
                ),
                SizedBox(width: 17.w),
                Text(
                  'Continue with facebook',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors().black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
