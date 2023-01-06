import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              const Image(
                width: double.infinity,
                fit: BoxFit.fill,
                image: AssetImage('assets/images/backonboarding.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 44.h),
                  const Divider(color: Colors.transparent),
                  const Image(
                    image: AssetImage('assets/images/onboarding.png'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 40.h),
          Text(
            'Memo Shop',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 30.sp,
              fontWeight: FontWeight.w500,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 69.w),
            child: Text(
              '''Our app will help you to buy the best and the best quality products.''',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: AppColors().grey,
              ),
            ),
          ),
          SizedBox(height: 88.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: AppButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/login_screen');
                      },
                    text: 'Login',
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                    child: AppButton(
                  onPress: () {
                    Navigator.pushNamed(context, '/register_option_screen');
                  },
                  text: 'Register',
                  textColor: AppColors().black,
                  buttonColor: AppColors().wGrey,
                )),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          TextButton(
            onPressed: () {},
            child: Text(
              'Continue as a guest',
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: AppColors().grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
