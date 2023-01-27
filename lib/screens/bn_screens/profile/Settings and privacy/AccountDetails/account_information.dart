import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils/colors/app_colors.dart';

class Accountinformation extends StatefulWidget {
  const Accountinformation({Key? key}) : super(key: key);

  @override
  State<Accountinformation> createState() => _AccountinformationState();
}

class _AccountinformationState extends State<Accountinformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Account information',
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
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 343.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Phone number',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    Text(
                      '+965025****254',
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
            ),
            ListTile(
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                width: 343.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r,),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    Text(
                      'T**r@gmail.com',
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
            ),
          ],
        ),
      ),
    );
  }
}
