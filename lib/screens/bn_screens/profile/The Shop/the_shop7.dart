import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';
import '../../../../utils/colors/app_colors.dart';

class TheShop7 extends StatefulWidget {
  const TheShop7({Key? key}) : super(key: key);

  @override
  State<TheShop7> createState() => _TheShop7State();
}

class _TheShop7State extends State<TheShop7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'The Shop',
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
         SvgPicture.asset(
              'assets/images/Groupsa.svg',
              height: 92.h,
              width: 138.w,
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/images/Frame23.svg'),
                SizedBox(width: 10.w),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
                  width: 304.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      color: Colors.white),
                  child: Text(
                    'Game play',
                    style: GoogleFonts.poppins(fontSize: 13.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/images/Frame24.svg'),
                SizedBox(width: 10.w),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
                  width: 304.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      color: Colors.white),
                  child: Text(
                    'PC game',
                    style: GoogleFonts.poppins(fontSize: 13.sp),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 128.h,
            ),
            AppButton(
              onPress: () {},
              text: 'Your request rejected',
              buttonColor: AppColors().wGrey,
              textColor: Colors.black,

            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Please enter the required pages option to find out the reasons for rejection.',
              style: GoogleFonts.poppins(
                fontSize: 12.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
