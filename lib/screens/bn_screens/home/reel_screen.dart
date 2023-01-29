import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class ReelScreen extends StatefulWidget {
  const ReelScreen({Key? key}) : super(key: key);

  @override
  State<ReelScreen> createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              const Image(
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/reel.png'),
              ),
              Positioned(
                right: 10,
                bottom: 60.h,
                child: Column(
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset('assets/images/likeIcon.svg'),
                        Text(
                          'Like',
                          style: GoogleFonts.poppins(
                            color: AppColors().white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Column(
                      children: [
                        SvgPicture.asset('assets/images/Subtract.svg'),
                        Text(
                          'Comment',
                          style: GoogleFonts.poppins(
                            color: AppColors().white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/Rectangle 9.svg',
                        ),
                        Text(
                          'Save',
                          style: GoogleFonts.poppins(
                              color: AppColors().white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/Union.svg',
                        ),
                        Text(
                          'Share',
                          style: GoogleFonts.poppins(
                              color: AppColors().white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: AppColors().white,
                        size: 35,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColors().white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 40,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The experience of fighting through flatline only without using the em # fyr # gaming # apex',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          color: AppColors().white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
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
                          SizedBox(width: 10.w),
                          Text(
                            'Vevo gaming',
                            style: GoogleFonts.poppins(
                              color: AppColors().white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
