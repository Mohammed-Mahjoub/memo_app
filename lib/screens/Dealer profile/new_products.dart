import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';

import '../../utils/colors/app_colors.dart';

class NewProducts extends StatefulWidget {
  const NewProducts({Key? key}) : super(key: key);

  @override
  State<NewProducts> createState() => _NewProductsState();
}

class _NewProductsState extends State<NewProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'New products',
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
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 200.h,
              child: Center(
                child: Image.asset('assets/images/Group.png'),
              ),
            ),
            Container(
              color: AppColors().wGrey,
              height: 40.h,
              child: Center(
                child: Text(
                  'Select the shop you want to advertise in',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: AppColors().purple,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Laptop and PC gaming',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Checkbox(
                checkColor: Colors.white,
                activeColor: AppColors().purple,
                value: true,
                shape: CircleBorder(),
                onChanged: (bool? value) {
                  setState(() {});
                },
              ),
            ),
            ListTile(
              title: Text(
                'Console and video games',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Checkbox(
                checkColor: Colors.white,
                activeColor: AppColors().purple,
                value: true,
                shape: CircleBorder(),
                onChanged: (bool? value) {
                  setState(() {});
                },
              ),
            ),
            ListTile(
              title: Text(
                'Gaming room and accessories',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Checkbox(
                checkColor: Colors.white,
                activeColor: AppColors().purple,
                value: true,
                shape: CircleBorder(),
                onChanged: (bool? value) {
                  setState(() {});
                },
              ),
            ),
            ListTile(
              title: Text(
                'Devices and Mobile games',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Checkbox(
                checkColor: Colors.white,
                activeColor: AppColors().purple,
                value: true,
                shape: CircleBorder(),
                onChanged: (bool? value) {
                  setState(() {});
                },
              ),
            ),
            AppButton(
              onPress: () {
                Navigator.pushNamed(context, '/product_details');
              },
              text: 'Next',
              buttonColor: AppColors().purple,
            ),
          ],
        ),
      ),
    );
  }
}
