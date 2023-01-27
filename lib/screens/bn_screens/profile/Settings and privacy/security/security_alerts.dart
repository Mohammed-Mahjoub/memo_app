import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';

import '../../../../../utils/colors/app_colors.dart';

class SecurityAlerts extends StatefulWidget {
  const SecurityAlerts({Key? key}) : super(key: key);

  @override
  State<SecurityAlerts> createState() => _SecurityAlertsState();
}

class _SecurityAlertsState extends State<SecurityAlerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 75.h,
              width: 75.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.r),
                  color: AppColors().wGrey),
              child: SvgPicture.asset(
                'assets/images/Vector123.svg',
                height: 28.h,
                width: 35.w,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'No unsual account activity detected in the last 7 days.',
              style: GoogleFonts.poppins(
                fontSize: 13.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 370.h,
            ),
            AppButton(
              onPress: () {},
              text: 'Done',
              buttonColor: AppColors().purple,
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Still have questions? Cantact us',
              style: GoogleFonts.poppins(
                fontSize: 13.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
