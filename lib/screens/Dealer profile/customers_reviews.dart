import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors/app_colors.dart';

class CustomersReviews extends StatefulWidget {
  const CustomersReviews({Key? key}) : super(key: key);

  @override
  State<CustomersReviews> createState() => _CustomersReviewsState();
}

class _CustomersReviewsState extends State<CustomersReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Customers Reviews',
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
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              height: 102.h,
              width: 343.w,
              decoration: BoxDecoration(
                  color: AppColors().wGrey,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/pngwing 14.png',
                    height: 70.h,
                    width: 108.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'لابتوب اسوس اصدار خاص \nكرت شاشة RTX 3800',
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.9',
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star_border_purple500_outlined),
                              Icon(Icons.star_border_purple500_outlined),
                              Icon(Icons.star_border_purple500_outlined),
                              Icon(Icons.star_border_purple500_outlined),
                              Icon(Icons.star_border_purple500_outlined),
                            ],
                          ),
                          Text(
                            '3254 reviews',
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                const Icon(Icons.filter_list),
                Text(
                  'New first',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 550.h,
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 110.h,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '1.0',
                              style: GoogleFonts.poppins(fontSize: 13.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '15/11/2022',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                color: AppColors().grey,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'منا****',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                              ),
                            ),
                            Spacer(),
                            const Icon(
                              Icons.ac_unit,
                              color: Colors.yellow,
                            ),
                            Text(
                              '1',
                              style: GoogleFonts.poppins(fontSize: 13.sp),
                            ),
                          ],
                        ),
                        Text(
                          'طلبت منو يد تحكم بلايستيشن ولما استخدمتها اسبوع خربت معي وقلت له عن المشكلة بس قال ماعليها كفالة  هي مكسورة اول واخر مرة اتعامل معه',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/new_products');
        },
        child: Text('next'),
      ),
    );
  }
}
