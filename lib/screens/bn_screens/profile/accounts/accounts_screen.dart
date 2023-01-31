import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/auth/register/mobile_register_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({Key? key}) : super(key: key);

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors().wGrey,
                border: Border.all(color: AppColors().purple,width: 1),
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Text(
                      'Account ID',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        color: AppColors().black,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/add_account_screen');
                      },
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: AppColors().purple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors().wGrey,
                border: Border.all(color: AppColors().purple,width: 1),
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Text(
                      'Game ID',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        color: AppColors().black,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/add_game_screen');
                      },
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: AppColors().purple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5.h,
              crossAxisSpacing: 5.w,
              childAspectRatio: 150 / 55,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Card(
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage('assets/images/accounts.png'),
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Steam',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              color: AppColors().black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ],
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.4),
      context: context,
      builder: (context) {
        return BottomSheet(
          backgroundColor: Colors.white,
          onClosing: () {},
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 18.h),
                          Center(
                            child: Text(
                              'Playstation',
                              style: GoogleFonts.poppins(
                                color: AppColors().black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            height: 40.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: AppColors().black,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    'Mohammed',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors().black,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.file_copy),
                                    padding: EdgeInsets.zero,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 20,
                        child: InkWell(
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
                      ),
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
