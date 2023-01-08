import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/bn_screens/profile/drower_screens/liked_screens/liked_reels_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/drower_screens/liked_screens/liked_videos_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class LikedScreen extends StatefulWidget {
  const LikedScreen({Key? key}) : super(key: key);

  @override
  State<LikedScreen> createState() => _LikedScreenState();
}

class _LikedScreenState extends State<LikedScreen> with SingleTickerProviderStateMixin {
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
        title: Text(
          'Liked',
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
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 10.h),
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
                  child: Icon(
                    Icons.ad_units,
                    color: AppColors().purple,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.account_tree,
                    color: AppColors().purple,
                  ),
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
                child: const LikedReelsScreen(),
              ),
              Visibility(
                visible: _tabController.index == 1,
                child: const LikedVideosScreen(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
