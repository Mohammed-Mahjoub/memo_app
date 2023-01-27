import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils/colors/app_colors.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Account details',
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group 1065.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r,),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Account Information',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/account_information');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Password 6.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Password',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/creat_new_password');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Group 1236.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Gender',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    Text(
                      'Male',
                      style: GoogleFonts.poppins(fontSize: 13.sp,color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/gender');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Frameas.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Date of birth',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    Text(
                      'March 7, 1960',
                      style: GoogleFonts.poppins(fontSize: 13.sp,color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/date_of_birth');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/Profile Delete 2.svg',
                height: 24.h,
                width: 24.w,
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Deactivate or delete account',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/deactivate_or_delete_account');
              },
            ),
          ],
        ),
      ),
    );
  }
}
