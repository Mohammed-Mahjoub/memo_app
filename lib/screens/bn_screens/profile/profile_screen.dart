import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/bn_screens/profile/my_profile_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/slogan_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
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
        title: TabBar(
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
                mainAxisSize: MainAxisSize.min,
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.person,
                      color: AppColors().purple,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Mohammed_Mahjoub',
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
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 170,
              color: AppColors().purple,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Image(image: AssetImage('assets/images/profile.png')),
                    ),
                    Text(
                      'Mohammed Mahjoub',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: AppColors().white,
                      ),
                    ),
                    Text(
                      'm@gmail.com',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: AppColors().white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Future.delayed(const Duration(milliseconds: 500), () {
                  Navigator.pushNamed(context, '/saved_screen');
                });
              },
              leading: const Icon(Icons.save),
              title: Text(
                'Saved',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: AppColors().black,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Future.delayed(const Duration(milliseconds: 500), () {
                  Navigator.pushNamed(context, '/liked_screen');
                });
              },
              leading: const Icon(Icons.favorite),
              title: Text(
                'Liked',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: AppColors().black,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Future.delayed(const Duration(milliseconds: 500), () {
                  Navigator.pushNamed(context, '/add_post_screen');
                });
              },
              leading: const Icon(Icons.add_circle_outline),
              title: Text(
                'New Post',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: AppColors().black,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Future.delayed(const Duration(milliseconds: 500), () {
                  Navigator.pushNamed(context, '/DealerProfile');
                });
              },
              leading: const Icon(Icons.add_circle_outline),
              title: Text(
                'Dealer Profile',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: AppColors().black,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
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
                child: const SloganScreen(),
              ),
              Visibility(
                visible: _tabController.index == 1,
                child: const MyProfileScreen(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
