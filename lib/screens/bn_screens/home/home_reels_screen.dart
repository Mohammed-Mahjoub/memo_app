import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          mainAxisSpacing: 5.h,
          crossAxisSpacing: 5.w,
          childAspectRatio: 111 / 150,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
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
                        child: const Image(image: AssetImage('assets/images/profile.png')),
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
