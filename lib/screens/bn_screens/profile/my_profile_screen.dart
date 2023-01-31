import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/bn_screens/profile/accounts/accounts_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/people_screens/people_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/reels_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/videos_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen>
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
    return ListView(
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
              '@Mohammed_Mahjoub',
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
            InkWell(
              onTap: (){
                // Navigator.pushNamed(context, '/liked_screen');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: AppColors().black,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: AppColors().red,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: (){
                // Navigator.pushNamed(context, '/saved_screen');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: AppColors().black,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SvgPicture.asset('assets/images/save.svg'),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.w),
            InkWell(
              onTap: () {
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
                              horizontal: 15.w, vertical: 15.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 20.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/Group 1057.svg'),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Promotion ads',
                                    style: GoogleFonts.poppins(fontSize: 15.sp),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              const Divider(),
                              SizedBox(height: 10.h),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/the_shop');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/Group 1058.svg'),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'The shop',
                                      style:
                                          GoogleFonts.poppins(fontSize: 15.sp),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              const Divider(),
                              SizedBox(height: 10.h),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/settings_and_privacy');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/Setting.svg'),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Settings and privacy',
                                      style:
                                          GoogleFonts.poppins(fontSize: 15.sp),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                            ],
                          ),
                        ),
                      );
                    },
                    backgroundColor: Colors.transparent);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: AppColors().black,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Edit profile',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors().black,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Icon(
                        Icons.edit,
                        color: AppColors().black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/quickcall.svg'),
            SizedBox(width: 20.w),
            SvgPicture.asset('assets/images/message.svg'),
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
            indicatorPadding: EdgeInsets.symmetric(horizontal: 15.w),
            unselectedLabelColor: AppColors().grey,
            onTap: (int tabIndex) {
              setState(() {
                _tabController.index = tabIndex;
              });
            },
            tabs: [
              Tab(
                child: SvgPicture.asset('assets/images/svgexport-12 1.svg',
                    width: 24.w,
                    height: 24.h,
                    color: _tabController.index == 0
                        ? AppColors().purple
                        : AppColors().black),
              ),
              Tab(
                child: SvgPicture.asset('assets/images/Vector.svg',
                    width: 22.w,
                    height: 22.h,
                    color: _tabController.index == 1
                        ? AppColors().purple
                        : AppColors().black),
              ),
              Tab(
                child: SvgPicture.asset('assets/images/personId.svg',
                    width: 24.w,
                    height: 24.h,
                    color: _tabController.index == 2
                        ? AppColors().purple
                        : AppColors().black),
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
              child: const ReelsScreen(),
            ),
            Visibility(
              visible: _tabController.index == 1,
              child: const VideosScreen(),
            ),
            Visibility(
              visible: _tabController.index == 2,
              child: const AccountsScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
