import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';

import '../../../../../utils/colors/app_colors.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  int _indexVis = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Portrait Screen',
          style: GoogleFonts.poppins(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            color: AppColors().black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors().black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 134.h,
                    width: 228.w,
                    color: AppColors().wGrey,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'You can add details to the video.. ',
                          hintStyle: GoogleFonts.poppins(fontSize: 13.sp),
                          contentPadding: const EdgeInsets.all(10),
                          border: InputBorder.none),
                      minLines: 5,
                      maxLines: 5,
                    ),
                  ),
                  SizedBox(width: 15.w),
                  InkWell(
                    child: SizedBox(
                      height: 130.h,
                      width: 100.w,
                      child: Stack(
                        children: [
                          Image.asset('assets/images/camera_image.png'),
                          Positioned(
                            bottom: 7,
                            left: 5,
                            right: 5,
                            child: Text(
                              'Select Cover',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/select_cover_screen');
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _indexVis = 0;
                      });
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          border: Border.all(color: AppColors().purple),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            'All',
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              color: AppColors().purple,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _indexVis = 1;
                      });
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          border: Border.all(color: AppColors().purple),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            '# Hashtag',
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              color: AppColors().purple,
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/mention_screen');
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          border: Border.all(color: AppColors().purple),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            '@ Mention',
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              color: AppColors().purple,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              const Divider(),
              Visibility(
                visible: _indexVis == 0,
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/tap_people_screen');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile1.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Tag People',
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/locations_screen');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/location.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Location',
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/lock.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Visible to Everyone',
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/commint.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(width: 15.w),
                        Text(
                          'Allow Comment',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Spacer(),
                        Switch(
                          onChanged: (value) {},
                          value: true,
                          activeColor: Colors.white,
                          activeTrackColor: AppColors().purple,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/downloadVideo.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(width: 15.w),
                        Text(
                          'Allow download video',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Spacer(),
                        Switch(
                          onChanged: (value) {},
                          value: true,
                          activeColor: Colors.white,
                          activeTrackColor: AppColors().purple,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/saveDrive.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(width: 15.w),
                        Text(
                          'Save to drive',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Spacer(),
                        Switch(
                          onChanged: (value) {},
                          value: true,
                          activeColor: Colors.white,
                          activeTrackColor: AppColors().purple,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Automatically share to:',
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 65.h,
                      child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              backgroundColor: AppColors().wGrey,
                              child: Image.asset('assets/images/twitter.png'),
                            ),
                          );
                        },
                      ),
                    ),
                    const Divider(),
                    AppButton(
                      buttonColor: AppColors().purple,
                      onPress: () {
                        Navigator.pushNamed(
                            context, '/upload_portrait_or_wide_screen');
                      },
                      text: 'Portrait Upload',
                      icon: SvgPicture.asset('assets/images/pUpload.svg'),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                ),
              ),
              Visibility(
                  visible: _indexVis == 1,
                  child: SizedBox(
                    height: 500.h,
                    child: ListView.builder(
                      itemExtent: 50,
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Text(
                              '#ga',
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '2.6B views',
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp, color: AppColors().grey),
                            )
                          ],
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
