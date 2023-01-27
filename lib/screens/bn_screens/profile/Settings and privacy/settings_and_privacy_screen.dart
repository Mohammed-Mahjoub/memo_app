import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors/app_colors.dart';

class SettingsAndPrivacy extends StatefulWidget {
  const SettingsAndPrivacy({Key? key}) : super(key: key);

  @override
  State<SettingsAndPrivacy> createState() => _SettingsAndPrivacyState();
}

class _SettingsAndPrivacyState extends State<SettingsAndPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Settings and privacy',
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
              width: 72.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Colors.grey)),
              child: Text(
                'Account',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group 1065.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'Account details',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
              onTap: () {
                Navigator.pushNamed(context, '/account_details');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group 1064.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'Privacy',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
              onTap: () {
                Navigator.pushNamed(context, '/private_account');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group 1063.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'Security',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
              onTap: () {
                Navigator.pushNamed(context, '/security');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Share.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'Share profile',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Container(
              height: 24.h,
              width: 140.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Colors.grey)),
              child: Text(
                'Content & display',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Frame1.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'Views history',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing:const Icon(
                  Icons.arrow_forward_ios,
                ),
              onTap: () {
                Navigator.pushNamed(context, '/views_history');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group 1072.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'Language',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
              onTap: () {
                Navigator.pushNamed(context, '/language');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Frame2.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'Display',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
              onTap: () {
                Navigator.pushNamed(context, '/display');
              },

            ),
            Container(
              height: 24.h,
              width: 130.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Colors.grey)),
              child: Text(
                'Support & About',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group 1083.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'Report a problem',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group 1084.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'Support',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group 1085.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Text(
                'About ',
                style: GoogleFonts.poppins(fontSize: 15.sp),
              ),
              trailing: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            Container(
              height: 24.h,
              width: 72.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Colors.grey)),
              child: Text(
                'login',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
