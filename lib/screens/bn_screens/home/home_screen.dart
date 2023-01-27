import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/auth/register/mobile_register_screen.dart';
import 'package:memo_app/screens/bn_screens/home/home_reels_screen.dart';
import 'package:memo_app/screens/bn_screens/home/home_videos_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/my_profile_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Row(
          children: [
            Expanded(
              child: TabBar(
                indicatorColor: AppColors().black,
                controller: _tabController,
                labelColor: AppColors().black,
                labelStyle: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelColor: AppColors().black,
                onTap: (int tabIndex) {
                  setState(() {
                    _tabController.index = tabIndex;
                  });
                },
                tabs: [
                  Tab(
                    child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset('assets/images/svgexport-12 1.svg',width: 24.w,height: 24.h,),
                          SizedBox(width: 5.w),
                         const Text(
                            'Portrait screen',
                          ),
                        ],
                      ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/images/Vector.svg',width: 22.w,height: 15.h,),
                        SizedBox(width: 5.w),
                        const Text(
                          'Wide screen',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SvgPicture.asset('assets/images/Search.svg',width: 24.w,height: 24.h,),
            SizedBox(width: 14.w,)
          ],
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            SizedBox(height: 5.h),
            IndexedStack(
              index: _tabController.index,
              children: [
                Visibility(
                  visible: _tabController.index == 0,
                  child: const HomeReelsScreen(),
                ),
                Visibility(
                  visible: _tabController.index == 1,
                  child: const HomeVideosScreen(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
