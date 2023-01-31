import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/colors/app_colors.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors().black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              'Done',
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                color: AppColors().purple,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gender',
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              width: 343.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colors.grey),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors().wGrey
                    ),
                    child: Center(child: Text('Men',style: GoogleFonts.poppins(fontSize: 15.sp,color: Colors.grey,),)),
                  ),
                  Container(
                    height: 40.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors().wGrey
                    ),
                    child: Center(child: Text('Women',style: GoogleFonts.poppins(fontSize: 15.sp,color: Colors.grey,),)),
                  ),
                  Container(
                    height: 40.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors().wGrey
                    ),
                    child: Center(child: Text('Unisex',style: GoogleFonts.poppins(fontSize: 15.sp,color: Colors.grey,),)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
