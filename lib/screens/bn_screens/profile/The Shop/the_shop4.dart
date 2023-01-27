import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';
import '../../../../utils/colors/app_colors.dart';

class TheShop4 extends StatefulWidget {
  const TheShop4({Key? key}) : super(key: key);

  @override
  State<TheShop4> createState() => _TheShop4State();
}

class _TheShop4State extends State<TheShop4> {
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
          Navigator.pushNamed(context, '/the_shop5');
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
                'Add company name and address,attach a copy of the trade license.',
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Frame11.svg',
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
                  'Company name',
                  style: GoogleFonts.poppins(fontSize: 13.sp),
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Vector12.svg',
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
                  'Company address',
                  style: GoogleFonts.poppins(fontSize: 13.sp),
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
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Vector12.svg',
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
                child: Row(
                  children: [
                    Text(
                      'Address line 2',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    Text(
                      'Option',
                      style: GoogleFonts.poppins(fontSize: 13.sp,color: AppColors().purple),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 120.h,
              width: 251.w,
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: AppColors().purple,
                ),
              ),
              child: Center(
                child: Text(
                  'Upload  the company trade license',
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
              text: 'Send',
              buttonColor: AppColors().wGrey,
              textColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
