import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/bn_screens/profile/people_screens/followers_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/people_screens/following_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/people_screens/friends_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class PeopleScreen extends StatefulWidget {
  final int index;
  const PeopleScreen({required this.index,Key? key}) : super(key: key);

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.index = widget.index;
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
          'Mohammed_Mahjoub',
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
        children: [
          TabBar(
            indicatorColor: AppColors().purple,
            controller: _tabController,
            labelColor: AppColors().purple,
            unselectedLabelColor: AppColors().grey,
            onTap: (int tabIndex) {
              setState(() {
                _tabController.index = tabIndex;
              });
            },
            tabs: [
              Tab(
                child: Text(
                  'Following 481',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Follower 75K',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Find Friends',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 5.h),
          IndexedStack(
            index: _tabController.index,
            children: [
              Visibility(
                visible: _tabController.index == 0,
                child: const FollowingScreen(),
              ),
              Visibility(
                visible: _tabController.index == 1,
                child: const FollowersScreen(),
              ),
              Visibility(
                visible: _tabController.index == 2,
                child: const FriendsScreen(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
