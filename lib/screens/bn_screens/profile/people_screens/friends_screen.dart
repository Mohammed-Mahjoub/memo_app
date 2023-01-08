import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            children: [
              Container(
                height: 47.h,
                width: 47.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const Image(
                  image: AssetImage('assets/images/contact.png'),
                ),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/other_profile_screen');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contacts',
                        style: GoogleFonts.poppins(
                          color: AppColors().black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                      Text(
                        'Find your contacts',
                        style: GoogleFonts.poppins(
                          color: AppColors().black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 30.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: AppColors().red,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors().black, width: 1),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    child: Text(
                      'Find',
                      style: GoogleFonts.poppins(
                        color: AppColors().white,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Container(
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                    color: AppColors().grey,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      size: 20,
                      color: AppColors().grey,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            children: [
              Container(
                height: 47.h,
                width: 47.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const Image(
                  image: AssetImage('assets/images/facebook.png'),
                ),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/other_profile_screen');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Facebook Friends',
                        style: GoogleFonts.poppins(
                          color: AppColors().black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                      Text(
                        'Find your contacts',
                        style: GoogleFonts.poppins(
                          color: AppColors().black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 30.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: AppColors().red,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors().black, width: 1),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    child: Text(
                      'Find',
                      style: GoogleFonts.poppins(
                        color: AppColors().white,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Container(
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                    color: AppColors().grey,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      size: 20,
                      color: AppColors().grey,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Suggested',
            style: GoogleFonts.poppins(
              color: AppColors().grey,
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 9,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 47.h,
                      width: 47.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const Image(
                        image: AssetImage('assets/images/profile.png'),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, '/other_profile_screen');
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Abdallah.drt',
                              style: GoogleFonts.poppins(
                                color: AppColors().black,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp,
                              ),
                            ),
                            Text(
                              'abood98',
                              style: GoogleFonts.poppins(
                                color: AppColors().black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColors().wGrey,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: AppColors().black, width: 1),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Follow',
                                style: GoogleFonts.poppins(
                                  color: AppColors().black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp,
                                ),
                              ),
                              Icon(
                                Icons.person,
                                color: AppColors().black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(
                          color: AppColors().grey,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            size: 20,
                            color: AppColors().grey,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }
}
