import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class RegisterDataScreen extends StatefulWidget {
  const RegisterDataScreen({Key? key}) : super(key: key);

  @override
  State<RegisterDataScreen> createState() => _RegisterDataScreenState();
}

class _RegisterDataScreenState extends State<RegisterDataScreen> {
  Color bColor = AppColors().wGrey;
  Color tColor = AppColors().grey;
  DateTime _date = DateTime.now();
  late String _gender;
  Color mColor = AppColors().wGrey;
  Color mTColor = AppColors().grey;
  Color wColor = AppColors().wGrey;
  Color wTColor = AppColors().grey;
  Color uColor = AppColors().wGrey;
  Color uTColor = AppColors().grey;


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
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 30.h),
          Center(
            child: Stack(
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors().wGrey,
                  ),
                  child: const Center(
                    child:
                        Image(image: AssetImage('assets/images/lPerson.png')),
                  ),
                ),
                const Positioned(
                    bottom: 0,
                    right: 0,
                    child:
                        Image(image: AssetImage('assets/images/camera.png'))),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Text(
                'Birth',
                style: GoogleFonts.poppins(
                  color: AppColors().black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                ' *',
                style: GoogleFonts.poppins(
                  color: AppColors().red,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          InkWell(
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2200),
              ).then((value) {
                setState(() {
                  _date = value!;
                });
              });
            },
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: AppColors().black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Text('${_date.year}-${_date.month}-${_date.day}'),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text(
                'Gender',
                style: GoogleFonts.poppins(
                  color: AppColors().black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                ' *',
                style: GoogleFonts.poppins(
                  color: AppColors().red,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(color: AppColors().black),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          mColor = AppColors().purple;
                          mTColor = AppColors().white;
                          wColor = AppColors().wGrey;
                          wTColor = AppColors().grey;
                          uColor = AppColors().wGrey;
                          uTColor = AppColors().grey;
                          bColor = AppColors().purple;
                        });
                      },
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: mColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                            child: Text(
                          'Men',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: mTColor,
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(width: 19.w),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          mColor = AppColors().wGrey;
                          mTColor = AppColors().grey;
                          wColor = AppColors().purple;
                          wTColor = AppColors().white;
                          uColor = AppColors().wGrey;
                          uTColor = AppColors().grey;
                          bColor = AppColors().purple;
                        });
                      },
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: wColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                            child: Text(
                          'Women',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: wTColor,
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(width: 19.w),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          mColor = AppColors().wGrey;
                          mTColor = AppColors().grey;
                          wColor = AppColors().wGrey;
                          wTColor = AppColors().grey;
                          uColor = AppColors().purple;
                          uTColor = AppColors().white;
                          bColor = AppColors().purple;
                        });
                      },
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: uColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                            child: Text(
                          'Unisex',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: uTColor,
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.h),
          AppButton(
            onPress: () {},
            text: 'Login',
            buttonColor: bColor,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}