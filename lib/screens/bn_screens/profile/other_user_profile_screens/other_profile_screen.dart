import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/bn_screens/profile/other_user_profile_screens/other_accounts_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/other_user_profile_screens/other_reels_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/other_user_profile_screens/other_videos_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/people_screens/people_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class OtherProfileScreen extends StatefulWidget {
  const OtherProfileScreen({Key? key}) : super(key: key);

  @override
  State<OtherProfileScreen> createState() => _OtherProfileScreenState();
}

class _OtherProfileScreenState extends State<OtherProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          '@saeed',
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
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 25.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PeopleScreen(index: 0),
                      ));
                },
                child: Column(
                  children: [
                    Text(
                      '110',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors().black,
                      ),
                    ),
                    Text(
                      'Following',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors().grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30.w),
              Container(
                width: 75.w,
                height: 75.h,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const Image(
                  image: AssetImage('assets/images/profile.png'),
                ),
              ),
              SizedBox(width: 30.w),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PeopleScreen(index: 1),
                      ));
                },
                child: Column(
                  children: [
                    Text(
                      '1.5M',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors().black,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors().grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '@saeed',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors().black,
                ),
              ),
              SizedBox(width: 5.w),
              Icon(
                Icons.verified_outlined,
                color: AppColors().blue,
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30.h,
                decoration: BoxDecoration(
                  color: AppColors().wGrey,
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
                          'Message',
                          style: GoogleFonts.poppins(
                            color: AppColors().black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                          ),
                        ),
                        Icon(
                          Icons.message_outlined,
                          color: AppColors().black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                height: 30.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: AppColors().purple,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors().black, width: 1),
                ),
                child: Center(
                  child: Text(
                    'Follow Back',
                    style: GoogleFonts.poppins(
                      color: AppColors().white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Text(
            '''ناشر محتوى
للقيمنق والتقنية
DN''',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.link),
              Text(
                'https://www.snapshat.com/add/darku_n?',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors().black,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TabBar(
              indicatorColor: AppColors().purple,
              controller: _tabController,
              labelColor: AppColors().black,
              unselectedLabelColor: AppColors().grey,
              onTap: (int tabIndex) {
                setState(() {
                  _tabController.index = tabIndex;
                });
              },
              tabs: [
                Tab(
                  child: SvgPicture.asset('assets/images/svgexport-12 1.svg',width: 24.w,height: 24.h,color: _tabController.index == 0 ? AppColors().purple : AppColors().black),
                ),
                Tab(
                  child: SvgPicture.asset('assets/images/Vector.svg',width: 22.w,height: 22.h,color: _tabController.index == 1 ? AppColors().purple : AppColors().black),
                ),
                Tab(
                  child: SvgPicture.asset('assets/images/personId.svg',width: 24.w,height: 24.h,color: _tabController.index == 2 ? AppColors().purple : AppColors().black),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          IndexedStack(
            index: _tabController.index,
            children: [
              Visibility(
                visible: _tabController.index == 0,
                child: const OtherReelsScreen(),
              ),
              Visibility(
                visible: _tabController.index == 1,
                child: const OtherVideosScreen(),
              ),
              Visibility(
                visible: _tabController.index == 2,
                child: const OtherAccountsScreen(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
