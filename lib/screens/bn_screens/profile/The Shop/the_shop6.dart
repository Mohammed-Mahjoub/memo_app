import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';
import '../../../../utils/colors/app_colors.dart';

class TheShop6 extends StatefulWidget {
  const TheShop6({Key? key}) : super(key: key);

  @override
  State<TheShop6> createState() => _TheShop6State();
}

class _TheShop6State extends State<TheShop6> {
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
          Navigator.pushNamed(context, '/the_shop7');
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
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Frame23.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                    color: Colors.white),
                child: Text(
                  'Game play',
                  style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w500),
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Frame24.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                    color: Colors.white),
                child: Text(
                  'PC game',
                  style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w500),
                ),
              ),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: Container(
                          height: 300.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.r),
                                topLeft: Radius.circular(10.r),
                              ),
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 15.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/Vector1.svg',
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 14.h),
                                  width: 304.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      5.r,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    'Gaming',
                                    style: GoogleFonts.poppins(fontSize: 13.sp),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 14.h),
                                  width: 304.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      5.r,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    'Electronics',
                                    style: GoogleFonts.poppins(fontSize: 13.sp),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 14.h),
                                  width: 304.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      5.r,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    'LifeStyle',
                                    style: GoogleFonts.poppins(fontSize: 13.sp),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    backgroundColor: Colors.transparent);
              },
            ),
            SizedBox(
              height: 128.h,
            ),
            AppButton(
              onPress: () {},
              text: 'Shop in activated',
              buttonColor: AppColors().purple,

            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'You can promote your products in the control panel within the profile page.',
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
