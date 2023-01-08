import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        iconTheme: IconThemeData(color: AppColors().black),
        title: Row(
          children: [
            Expanded(
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
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.account_tree_rounded,
                            color: AppColors().purple,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Portrait screen',
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.account_balance_wallet_sharp,
                            color: AppColors().purple,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Wide screen',
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.search),),
          ],
        ),
      ),
      body: ListView(
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
    );
  }
}
