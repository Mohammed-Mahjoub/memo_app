import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/bn_screens/profile/drower_screens/saved/saved_reels_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/drower_screens/saved/saved_videos_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> with SingleTickerProviderStateMixin {
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
          'Saved',
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
                child: const SavedReelsScreen(),
              ),
              Visibility(
                visible: _tabController.index == 1,
                child: const SavedVideosScreen(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
