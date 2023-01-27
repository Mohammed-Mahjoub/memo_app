import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils/colors/app_colors.dart';

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Security',
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
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Frame5.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Security alerts',
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
              onTap: () {
                Navigator.pushNamed(context, '/security_alerts');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Your devices',
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
              onTap: () {
                Navigator.pushNamed(context, '/your_devices');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group1.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Manage app permissions',
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
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Security Safe.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Two-step verification',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    Text(
                      'off',
                      style: GoogleFonts.poppins(fontSize: 13.sp,color: Colors.grey),
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
            ),
          ],
        ),
      ),
    );
  }
}
