import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';
import '../../../../utils/colors/app_colors.dart';

class TheShop5 extends StatefulWidget {
  const TheShop5({Key? key}) : super(key: key);

  @override
  State<TheShop5> createState() => _TheShop5State();
}

class _TheShop5State extends State<TheShop5> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/the_shop6');
        },
        child: Text('Next'),
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
              text: 'In profress',
              buttonColor: AppColors().wGrey,
              textColor: Colors.grey,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'The process takes 3 working days to review the documents and study the project.',
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
