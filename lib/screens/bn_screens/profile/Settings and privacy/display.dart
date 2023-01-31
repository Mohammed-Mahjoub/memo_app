import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../utils/colors/app_colors.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Display',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 24.h,
              width: 110.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Colors.grey)),
              child: Text(
                'Appearance',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/images/Group 1238.svg',
                        height: 163.h,
                        width: 90.w,
                      ),
                      Text(
                        'Light',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: AppColors().purple,
                          value: false,
                          shape: CircleBorder(),
                          onChanged: (bool? value) {
                            setState(() {
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/images/Group 1239.svg',
                        height: 163.h,
                        width: 90.w,
                      ),
                      Text(
                        'Dark',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: AppColors().purple,
                          value: true,
                          shape: CircleBorder(),
                          onChanged: (bool? value) {
                            setState(() {
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
