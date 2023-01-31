import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class HomeVideosScreen extends StatefulWidget {
  const HomeVideosScreen({Key? key}) : super(key: key);

  @override
  State<HomeVideosScreen> createState() => _HomeVideosScreenState();
}

class _HomeVideosScreenState extends State<HomeVideosScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  color: AppColors().wGrey,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Row(
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  height: 40.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors().purple,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 12.5.r,
                                        child: Image.asset(
                                            'assets/images/profile.png'),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                '105k',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11.sp,
                                                  color: AppColors().black,
                                                ),
                                              ),
                                              Icon(
                                                Icons.remove_red_eye_outlined,
                                                size: 13.h,
                                              )
                                            ],
                                          ),
                                          Text(
                                            'المحترف الرقمي',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: AppColors().black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 175.w,
                                  child: Text(
                                    'أفضل قطعة إيم من شركة صينية اصدار البرو Armorx الإحترافية اللاحدود لها',
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.poppins(
                                      fontSize: 11.sp,
                                      color: AppColors().black,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25.w),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 1,
                            top: 5,
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.more_vert,
                                color: AppColors().black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/video_screen');
                        },
                        onLongPress: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.r),
                                        topLeft: Radius.circular(10.r),
                                      ),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15.w,
                                      vertical: 15.h,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: SvgPicture.asset(
                                            'assets/images/Vector1.svg',
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/Vector2.svg',
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              'Block',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                        const Divider(),
                                        SizedBox(height: 8.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/Vector2.svg',
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              'Not interested',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                        const Divider(),
                                        SizedBox(height: 8.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/Vector2.svg',
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              'Don\'t recommend account',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                        const Divider(),
                                        SizedBox(height: 8.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/Group 631.svg',
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              'Report',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              backgroundColor: Colors.transparent);
                        },
                        child: Image(
                          image: const AssetImage('assets/images/videos.png'),
                          height: 180.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
