import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/auth/register/email_register_screen.dart';
import 'package:memo_app/screens/auth/register/mobile_register_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/my_profile.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String x = 'Mohammed_Mahjoub';
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
    return ListView(
      children: [
        SizedBox(height: 5.h),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: AppColors().purple,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Slogan',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,

                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: AppColors().purple,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      x.length > 11 ? '${x.substring(0,11)}..':x,
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        IndexedStack(
          index: _tabController.index,
          children: [
            Visibility(
              visible: _tabController.index == 0,
              child: const MobileRegisterScreen(),
            ),
            Visibility(
              visible: _tabController.index == 1,
              child: const MyProfileScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
