import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../utils/colors/app_colors.dart';

class PrivateAccount extends StatefulWidget {
  const PrivateAccount({Key? key}) : super(key: key);

  @override
  State<PrivateAccount> createState() => _PrivateAccountState();
}

class _PrivateAccountState extends State<PrivateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Private account',
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
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/Vector4.svg',
                  height: 24.h,
                  width: 24.w,
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  width: 304.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Text(
                        'Private account',
                        style: GoogleFonts.poppins(fontSize: 13.sp),
                      ),
                      Spacer(),
                      Switch(
                        onChanged: (value) {},
                        value: true,
                        activeColor: Colors.white,
                        activeTrackColor: AppColors().purple,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/Inbox.svg',
                  height: 24.h,
                  width: 24.w,
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  width: 304.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Text(
                        'Comments',
                        style: GoogleFonts.poppins(fontSize: 13.sp),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/Frame6.svg',
                  height: 24.h,
                  width: 24.w,
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  width: 304.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Text(
                        'Private messages',
                        style: GoogleFonts.poppins(fontSize: 13.sp),
                      ),
                      Spacer(),
                      Switch(
                        onChanged: (value) {},
                        value: true,
                        activeColor: Colors.white,
                        activeTrackColor: AppColors().purple,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/Download.svg',
                  height: 24.h,
                  width: 24.w,
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  width: 304.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Text(
                        'Downloads',
                        style: GoogleFonts.poppins(fontSize: 13.sp),
                      ),
                      Spacer(),
                      Text(
                        'on',
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp, color: Colors.grey),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/Group 1.svg',
                  height: 24.h,
                  width: 24.w,
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  width: 304.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Text(
                        'Follow list',
                        style: GoogleFonts.poppins(fontSize: 13.sp),
                      ),
                      Spacer(),
                      Text(
                        'Everyone',
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp, color: Colors.grey),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/Frame7.svg',
                  height: 24.h,
                  width: 24.w,
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  width: 304.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Text(
                        'Blocked accounts',
                        style: GoogleFonts.poppins(fontSize: 13.sp),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
