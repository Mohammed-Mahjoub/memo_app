import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors/app_colors.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Edit profile',
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
              'Done',
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: AppColors().purple,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        children: [
          SizedBox(height: 20.h),
          Container(
            height: 75.h,
            width: 75.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(37.5.r),
            ),
            child: const Image(
              image: AssetImage('assets/images/profile.png'),
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            'Edit picture',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Name',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().black,
                  ),
                ),
              ),
              // SizedBox(width: 10.w),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/name_screen');
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Mohammed mahjoub',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().grey,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors().grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        color: AppColors().grey,
                        height: 1.h,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Username',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().black,
                  ),
                ),
              ),
              // SizedBox(width: 10.w),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/user_name_screen');
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '@Mohammed_mahjoub',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().grey,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors().grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        color: AppColors().grey,
                        height: 1.h,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Business Number',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().black,
                  ),
                ),
              ),
              // SizedBox(width: 10.w),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/business_number_screen');
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '+972597774041',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().grey,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors().grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        color: AppColors().grey,
                        height: 1.h,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Email address',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().black,
                  ),
                ),
              ),
              // SizedBox(width: 10.w),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/email_screen');
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'momahjoub14@gmail.com',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().grey,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors().grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        color: AppColors().grey,
                        height: 1.h,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Bio',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().black,
                  ),
                ),
              ),
              // SizedBox(width: 10.w),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/bio_screen');
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'technical content',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().grey,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors().grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        color: AppColors().grey,
                        height: 1.h,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Website',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().black,
                  ),
                ),
              ),
              // SizedBox(width: 10.w),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'www.momahjoub.com',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors().grey,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      color: AppColors().grey,
                      height: 1.h,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          const Divider(),
          SizedBox(height: 20.h),
          Text(
            'Switch to settings?',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: AppColors().purple,
            ),
          ),
        ],
      ),
    );
  }
}
