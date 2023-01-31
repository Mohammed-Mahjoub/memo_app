import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/bn_screens/home/home_reels_screen.dart';
import 'package:memo_app/screens/bn_screens/home/home_videos_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/login_option_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding:
                    EdgeInsetsDirectional.only(start: 40.w, end: 15.w),
                indicatorWeight: 3,
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/images/svgexport-12 1.svg',
                          width: 24.w,
                          height: 24.h,
                        ),
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
                        SvgPicture.asset(
                          'assets/images/Vector.svg',
                          width: 22.w,
                          height: 15.h,
                        ),
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
            InkWell(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: SvgPicture.asset(
                  'assets/images/Search.svg',
                  width: 24.w,
                  height: 24.h,
                )),
            SizedBox(
              width: 14.w,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            SizedBox(height: 10.h),
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

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      clipBehavior: Clip.antiAlias,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.4),
      context: context,
      builder: (context) {
        return BottomSheet(
          enableDrag: true,
          animationController: BottomSheet.createAnimationController(this),
          backgroundColor: Colors.white,
          onClosing: () {},
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 18.h),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 25.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.fromBorderSide(
                                  BorderSide(
                                    color: AppColors().black,
                                  ),
                                ),
                              ),
                              child: const Center(child: Icon(Icons.close)),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Log in or Sign up',
                            style: GoogleFonts.poppins(
                              color: AppColors().black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              // Navigator.pop(context);
                            },
                            child: const Icon(Icons.help_outline),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        '''Create happy times by playing with your friend And share the best moments with them and more on Memo.''',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          color: AppColors().black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      LoginOptionButton(
                        onPress: () {
                          Navigator.pushNamed(context, '/register_screen');
                        },
                        buttonColor: AppColors().purple,
                        body: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 24.h,
                              width: 24.w,
                              image: const AssetImage(
                                'assets/images/person.png',
                              ),
                            ),
                            SizedBox(width: 17.w),
                            Text(
                              'Email / Username',
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors().white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '               .',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors().grey,
                              decorationThickness: 4,
                              decorationStyle: TextDecorationStyle.dotted,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'or continue with',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors().grey,
                              ),
                            ),
                          ),
                          Text(
                            '               .',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors().grey,
                              decorationThickness: 4,
                              decorationStyle: TextDecorationStyle.dotted,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      LoginOptionButton(
                        onPress: () {},
                        buttonColor: AppColors().white,
                        body: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 24.h,
                              width: 24.w,
                              image: const AssetImage(
                                'assets/images/google.png',
                              ),
                            ),
                            SizedBox(width: 17.w),
                            Text(
                              'Continue with google',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      LoginOptionButton(
                        onPress: () {},
                        buttonColor: AppColors().white,
                        body: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 24.h,
                              width: 24.w,
                              image: const AssetImage(
                                'assets/images/instagram.png',
                              ),
                            ),
                            SizedBox(width: 17.w),
                            Text(
                              'Continue with instagram',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      LoginOptionButton(
                        onPress: () {},
                        buttonColor: AppColors().white,
                        body: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 24.h,
                              width: 24.w,
                              image: const AssetImage(
                                'assets/images/twitter.png',
                              ),
                            ),
                            SizedBox(width: 17.w),
                            Text(
                              'Continue with twitter',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      LoginOptionButton(
                        onPress: () {},
                        buttonColor: AppColors().white,
                        body: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 24.h,
                              width: 24.w,
                              image: const AssetImage(
                                'assets/images/facebook.png',
                              ),
                            ),
                            SizedBox(width: 17.w),
                            Text(
                              'Continue with facebook',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors().white,
                            decoration: TextDecoration.overline,
                            decorationStyle: TextDecorationStyle.dashed,
                            decorationColor: AppColors().grey,
                            decorationThickness: 2),
                      ),
                      Text(
                        '''By continuing, you agree to our Terms of Service and acknowledge that you have read our Privacy Policy to learn how we collect , use, and share your data.''',
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors().black,
                        ),
                      ),
                      SizedBox(height: 80.h),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
