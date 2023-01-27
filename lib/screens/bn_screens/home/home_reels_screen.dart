import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class HomeReelsScreen extends StatefulWidget {
  const HomeReelsScreen({Key? key}) : super(key: key);

  @override
  State<HomeReelsScreen> createState() => _HomeReelsScreenState();
}

class _HomeReelsScreenState extends State<HomeReelsScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.w,
          childAspectRatio: 166 / 227,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/reel_screen');
            },
            onLongPress: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: double.infinity,
                      child: Container(
                        height: 280.h,
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
                            crossAxisAlignment: CrossAxisAlignment.end,
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
                                    fontSize: 15.sp
                                  ),
                                ),
                              ),
                              Divider(),
                              ListTile(
                                leading: SvgPicture.asset(
                                  'assets/images/Vector2.svg',
                                ),
                                title: Text(
                                  'Not interested',
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.sp
                                  ),
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
                                      fontSize: 15.sp
                                  ),
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
                                      fontSize: 15.sp
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  backgroundColor: Colors.transparent);
            },
            child: Stack(
              children: [
                Container(
                  child: const Image(
                    image: AssetImage('assets/images/reels.png'),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5.h,
                  right: 10.w,
                  child: Row(
                    children: [
                      Text(
                        '1110',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                          color: AppColors().white,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Icon(
                        Icons.visibility_outlined,
                        size: 20,
                        color: AppColors().white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 5.h,
                  left: 10.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const Image(
                            image: AssetImage('assets/images/profile.png')),
                      ),
                      Text(
                        'Vivo gaming',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp,
                          color: AppColors().white,
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
