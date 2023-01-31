import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils/colors/app_colors.dart';

class BusinessNumberScreen extends StatefulWidget {
  const BusinessNumberScreen({Key? key}) : super(key: key);

  @override
  State<BusinessNumberScreen> createState() => _BusinessNumberScreenState();
}

class _BusinessNumberScreenState extends State<BusinessNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Business Number',
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              'Save',
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: AppColors().purple,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/images/mopile.svg'),
                SizedBox(width: 10.w),
                Row(
                  children: [
                    Text(
                      'KW',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors().purple,
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Icon(
                      Icons.expand_more,
                      color: AppColors().grey,
                    ),
                  ],
                ),
                Expanded(
                  child: TextField(
                    // maxLines: 30,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: 'Username',
                    ),
                    onSubmitted: (value) {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              'You my recive SMS notifications from us for security and login purposes.',
              style: GoogleFonts.poppins(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors().grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
