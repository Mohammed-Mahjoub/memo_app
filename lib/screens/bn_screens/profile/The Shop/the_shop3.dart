import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';
import '../../../../utils/colors/app_colors.dart';

class TheShop3 extends StatefulWidget {
  const TheShop3({Key? key}) : super(key: key);

  @override
  State<TheShop3> createState() => _TheShop3State();
}

class _TheShop3State extends State<TheShop3> {
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
          Navigator.pushNamed(context, '/the_shop4');
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 33.w),
              child: Text(
                'write  down the bank account information of the trade license holder',
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/images/Vector10.svg'),
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
                    'Name of the bank account holder',
                    style: GoogleFonts.poppins(fontSize: 13.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/images/Group 1131.svg'),
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
                    'Bank account number',
                    style: GoogleFonts.poppins(fontSize: 13.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/images/Groupa.svg'),
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
                    'IBAN',
                    style: GoogleFonts.poppins(fontSize: 13.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/images/Groups.svg'),
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
                    'Bank name',
                    style: GoogleFonts.poppins(fontSize: 13.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              height: 120.h,
              width: 251.w,
              padding: EdgeInsets.symmetric(horizontal:20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: AppColors().purple,
                ),
              ),
              child: Center(
                child: Text(
                  'Upload  English bank account statement(Kyc)',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            AppButton(
              onPress: () {},
              text: 'Next',
              buttonColor: AppColors().wGrey,
              textColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
