import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/auth/register/email_register_screen.dart';
import 'package:memo_app/screens/auth/register/mobile_register_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class MainRegisterScreen extends StatefulWidget {
  const MainRegisterScreen({Key? key}) : super(key: key);

  @override
  State<MainRegisterScreen> createState() => _MainRegisterScreenState();
}

class _MainRegisterScreenState extends State<MainRegisterScreen> with SingleTickerProviderStateMixin{
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
          'Sign up',
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
          SizedBox(height: 5.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: TabBar(
              indicatorColor: AppColors().black,
              controller: _tabController,
              labelColor: AppColors().black,
              unselectedLabelColor: AppColors().grey,
              onTap: (int tabIndex) {
                setState(() {
                  _tabController.index = tabIndex;
                });
              },
              tabs: const [
                Tab(
                  text: 'Phone',
                ),
                Tab(
                  text: 'Email / Username',
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
                child:  const EmailRegisterScreen(),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
