import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class LikedVideosScreen extends StatefulWidget {
  const LikedVideosScreen({Key? key}) : super(key: key);

  @override
  State<LikedVideosScreen> createState() => _LikedVideosScreenState();
}

class _LikedVideosScreenState extends State<LikedVideosScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5.h,
          crossAxisSpacing: 5.w,
          childAspectRatio: 150 / 183,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
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
                      InkWell(
                        onTap: () {},
                        child: Image(
                          image: const AssetImage('assets/images/videos.png'),
                          height: 110.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                      ),
                      SizedBox(height: 5.h),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
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
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.more_vert,
                      color: AppColors().black,
                    ),
                  ),
                ),

                Positioned(
                  top: 10.h,
                  left: 10.w,
                  child: Icon(
                    Icons.favorite,
                    size: 20,
                    color: AppColors().red,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
