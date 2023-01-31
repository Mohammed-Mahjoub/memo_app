import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({Key? key}) : super(key: key);

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                    color: AppColors().blue,
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
                            'Following',
                            style: GoogleFonts.poppins(
                              color: AppColors().white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                            ),
                          ),
                          Icon(
                            Icons.person_outline,
                            color: AppColors().white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                SvgPicture.asset('assets/images/pill.svg'),

              ],
            ),
          );
        });
  }
}
