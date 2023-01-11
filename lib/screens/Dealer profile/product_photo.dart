import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';
import '../../utils/colors/app_colors.dart';

class ProductPhoto extends StatefulWidget {
  const ProductPhoto({Key? key}) : super(key: key);

  @override
  State<ProductPhoto> createState() => _ProductPhotoState();
}

class _ProductPhotoState extends State<ProductPhoto> {
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
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 145.h,
                child: Center(
                  child: Image.asset('assets/images/Frame.png'),
                ),
              ),
              Container(
                color: AppColors().wGrey,
                height: 40.h,
                child: Center(
                  child: Text(
                    'Product details',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: AppColors().purple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                  return  Column(
                    children: [
                      Container(
                        height: 100.h,
                        width: 88.w,
                        child: Image.asset('assets/images/Rectangle 1498.png'),
                      ),
                      Text(
                        'Cover',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          color: AppColors().black,
                        ),
                      ),
                      Radio(
                          value: 'M',
                          groupValue: '',
                          onChanged: (String? value) {

                          }),
                    ],
                  );
                },),
              ),
              SizedBox(
                height: 20.h,
              ),
              AppButton(
                onPress: () {
                  Navigator.pushNamed(context, '/ProductPhoto');
                },
                text: 'Next',
                buttonColor: AppColors().purple,
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
