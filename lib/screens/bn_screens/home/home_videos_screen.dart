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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                            SizedBox(width: 10.w),
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
                            SizedBox(width: 14.w),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.more_vert,
                                color: AppColors().black,
                              ),
                            ),
                          ],
                        ),
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
                                  height: 350.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.r),
                                        topLeft: Radius.circular(10.r),
                                      ),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.w, vertical: 15.h),
                                    child: Column(
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
                                        ListTile(
                                          leading: SvgPicture.asset(
                                            'assets/images/Vector2.svg',
                                          ),
                                          title: Text(
                                            'Block',
                                            style: GoogleFonts.poppins(
                                                fontSize: 15.sp),
                                          ),
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Center(
                                                    child: Text(
                                                      'Block Darkgate?',
                                                      style:
                                                          GoogleFonts.poppins(
                                                            fontSize: 15.sp,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  content: Container(
                                                    height: 40.h,
                                                    width: 265.w,
                                                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                                                    child: Center(
                                                      child: Text(
                                                        'they will not be able to send you message, see your posts, or find your profile. ',
                                                        style:
                                                        GoogleFonts.poppins(
                                                          fontSize: 13.sp,
                                                          fontWeight: FontWeight.w500,
                                                          color: Colors.grey
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      style: TextButton.styleFrom(
                                                        foregroundColor: Colors.black,
                                                        textStyle: GoogleFonts.poppins(
                                                          fontSize: 15.sp,
                                                          fontWeight: FontWeight.w500,

                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: const Text('Cancel'),
                                                    ),
                                                    SizedBox(width: 94.w,),
                                                    TextButton(
                                                      style: TextButton.styleFrom(
                                                        foregroundColor: Colors.red,
                                                        textStyle: GoogleFonts.poppins(
                                                          fontSize: 15.sp,
                                                          fontWeight: FontWeight.w500,

                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: const Text('Block'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                        ),
                                        Divider(),
                                        ListTile(
                                          leading: SvgPicture.asset(
                                            'assets/images/Vector2.svg',
                                          ),
                                          title: Text(
                                            'Not interested',
                                            style: GoogleFonts.poppins(
                                                fontSize: 15.sp),
                                          ),
                                        ),
                                        Divider(),
                                        ListTile(
                                          leading: SvgPicture.asset(
                                            'assets/images/Vector2.svg',
                                          ),
                                          title: Text(
                                            'Don\'t recommend account',
                                            style: GoogleFonts.poppins(
                                                fontSize: 15.sp),
                                          ),
                                        ),
                                        Divider(),
                                        ListTile(
                                          leading: SvgPicture.asset(
                                            'assets/images/Group 631.svg',
                                          ),
                                          title: Text(
                                            'Report',
                                            style: GoogleFonts.poppins(
                                                fontSize: 15.sp),
                                          ),
                                        ),
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
