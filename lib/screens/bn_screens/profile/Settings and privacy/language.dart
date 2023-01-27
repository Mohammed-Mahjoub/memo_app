import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../utils/colors/app_colors.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Language',
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
                'assets/images/Group 1072.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Column(
                children: [
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
                          'App Language',
                          style: GoogleFonts.poppins(fontSize: 13.sp),
                        ),
                        Spacer(),
                        Text(
                          'English',
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
                  Text(
                    'Select your default app language.',
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
