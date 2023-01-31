import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class SelectCoverScreen extends StatefulWidget {
  const SelectCoverScreen({Key? key}) : super(key: key);

  @override
  State<SelectCoverScreen> createState() => _SelectCoverScreenState();
}

class _SelectCoverScreenState extends State<SelectCoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Done',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        leadingWidth: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 15.h),
            child: Image.asset(
              'assets/images/Rectangle 904.png',
              height: 425,
              width: 285,
            ),
          ),
          Container(
            height: 84.h,
            color: AppColors().wGrey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: Text(
              textAlign: TextAlign.center,
              'To select cover image, choose a frame from your video.',
              style: GoogleFonts.poppins(fontSize: 15.sp),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 107),
            child: AppButton(
              onPress: () {
                Navigator.pushNamed(context, '/upload_cover_screen');
              },
              text: ' Upload',
              buttonColor: AppColors().purple,
              icon: SvgPicture.asset(
                'assets/images/cam.svg',
                color: AppColors().white,
                height: 20.h,
                width: 20.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
