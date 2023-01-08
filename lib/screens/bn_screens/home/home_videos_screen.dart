import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: AppColors().wGrey,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 5.h),
                        child: Row(
                          children: [
                            Container(
                              height: 45.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors().purple,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 20.h,
                                            width: 20.w,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Image(
                                                image:
                                                AssetImage('assets/images/profile.png')),
                                          ),
                                          SizedBox(width: 5.w),
                                          Text(
                                            '1110',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13.sp,
                                              color: AppColors().black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Mohammed Mahjoub',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10.sp,
                                          color: AppColors().black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Text(
                                '''The best part I'm from a Chinese company issuing the Armorx Pro Unlimited Professional''',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp,
                                  color: AppColors().black,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(width: 5.w),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/video_screen');
                        },
                        child: Image(
                          image: const AssetImage('assets/images/videos.png'),
                          height: 180.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 5.w),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: AppColors().black,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
