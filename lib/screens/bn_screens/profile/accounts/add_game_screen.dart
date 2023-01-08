import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class AddGameScreen extends StatefulWidget {
  const AddGameScreen({Key? key}) : super(key: key);

  @override
  State<AddGameScreen> createState() => _AddGameScreenState();
}

class _AddGameScreenState extends State<AddGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Account ID',
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
          SizedBox(height: 25.h),
          Text(
            'Select the game account you want activate',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 10.h),
          Divider(color: AppColors().grey, thickness: 2),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/playstation.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/expox.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/discord.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/accounts.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/playstation.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/expox.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/discord.png'),
                  ),
                ),
              ),
              Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors().white,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/accounts.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          AppButton(
            onPress: () {

            },
            text: 'Done',
            buttonColor: AppColors().purple,
          ),
        ],
      ),
    );
  }
}
