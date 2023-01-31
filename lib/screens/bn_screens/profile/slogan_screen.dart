import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class SloganScreen extends StatefulWidget {
  const SloganScreen({Key? key}) : super(key: key);

  @override
  State<SloganScreen> createState() => _SloganScreenState();
}

class _SloganScreenState extends State<SloganScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 142.h,
          width: double.infinity,
          color: AppColors().wGrey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80.h,
                      width: 75.w,
                      child: Container(
                        height: 82.h,
                        width: 72.w,
                        color: Colors.white,
                        child: const Icon(Icons.image_outlined),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 30.h,
                      width: 100.w,
                      child: AppButton(
                        onPress: () {},
                        text: 'New products',
                        buttonColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.h,
                      width: 100.w,
                      child: AppButton(
                        onPress: () {},
                        text: 'KSA, Riyadh,A..',
                        buttonColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 11.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 25.h,
                      width: 75.w,
                      child: AppButton(
                        onPress: () {},
                        text: 'Rate 5.0',
                        buttonColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                      width: 130.w,
                      child: AppButton(
                        onPress: () {},
                        text: 'My customers',
                        buttonColor: AppColors().purple,
                        textColor: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 30.h,
                      width: 130.w,
                      child: AppButton(
                        onPress: () {},
                        text: 'My orders',
                        buttonColor: AppColors().purple,
                        textColor: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 30.h,
                      width: 130.w,
                      child: AppButton(
                        onPress: () {},
                        text: 'Order history',
                        buttonColor: AppColors().purple,
                        textColor: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          height: 230.h,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                height: 220.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().wGrey,
                ),
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/pngwing 14.png'),
                    Text(
                      'لابتوب اسوس اصدار خاص كرت شاشة RTX 3800',
                      style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          ' \$50000',
                          style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                      width: 130.w,
                      child: AppButton(
                        onPress: () {},
                        text: 'Edit products',
                        buttonColor: AppColors().purple,
                        textColor: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
