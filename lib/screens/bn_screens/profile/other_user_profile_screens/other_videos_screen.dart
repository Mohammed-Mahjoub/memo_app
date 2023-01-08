import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class OtherVideosScreen extends StatefulWidget {
  const OtherVideosScreen({Key? key}) : super(key: key);

  @override
  State<OtherVideosScreen> createState() => _OtherVideosScreenState();
}

class _OtherVideosScreenState extends State<OtherVideosScreen> {
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
                  height: 120.h,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: AppColors().wGrey,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image(
                            image: const AssetImage('assets/images/videos.png'),
                            height: 110.h,
                            width: 162.w,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),
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
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        '1110',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                          color: AppColors().black,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      const Icon(
                        Icons.visibility_outlined,
                        size: 20,
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
