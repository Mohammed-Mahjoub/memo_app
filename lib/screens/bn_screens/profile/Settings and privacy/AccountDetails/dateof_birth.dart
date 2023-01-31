import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/colors/app_colors.dart';

class DateOfBirth extends StatefulWidget {
  const DateOfBirth({Key? key}) : super(key: key);

  @override
  State<DateOfBirth> createState() => _DateOfBirthState();
}

class _DateOfBirthState extends State<DateOfBirth> {
  String m = 'MM';
  String d = 'DD';
  String y = 'YYYY';
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
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Date of birth',
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            // Row(
            //   children: [
            //     InkWell(
            //       onTap: () {
            //         showDatePicker(
            //           context: context,
            //           initialDate: DateTime.now(),
            //           firstDate: DateTime(1900),
            //           lastDate: DateTime(2200),
            //         ).then((value) {});
            //       },
            //       child: Container(
            //         height: 48.h,
            //         width: 73.w,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(15.r),
            //           border: Border.all(color: AppColors().black),
            //         ),
            //         child: Padding(
            //           padding: const EdgeInsets.all(8),
            //           child: Row(
            //             children: [
            //               Text(
            //                 '03',
            //                 style: GoogleFonts.poppins(
            //                   fontSize: 14.sp,
            //                   fontWeight: FontWeight.w400,
            //                 ),
            //               ),
            //               const Spacer(),
            //               const Icon(Icons.expand_more)
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 16.w),
            //     InkWell(
            //       onTap: () {
            //         showDatePicker(
            //           context: context,
            //           initialDate: DateTime.now(),
            //           firstDate: DateTime(1900),
            //           lastDate: DateTime(2200),
            //         ).then((value) {});
            //       },
            //       child: Container(
            //         height: 48.h,
            //         width: 73.w,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(15.r),
            //           border: Border.all(color: AppColors().black),
            //         ),
            //         child: Padding(
            //           padding: const EdgeInsets.all(8),
            //           child: Row(
            //             children: [
            //               Text(
            //                 '07',
            //                 style: GoogleFonts.poppins(
            //                   fontSize: 14.sp,
            //                   fontWeight: FontWeight.w400,
            //                 ),
            //               ),
            //               const Spacer(),
            //               const Icon(Icons.expand_more)
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 16.w
            //     ),
            //     InkWell(
            //       onTap: () {
            //         showDatePicker(
            //           context: context,
            //           initialDate: DateTime.now(),
            //           firstDate: DateTime(1900),
            //           lastDate: DateTime(2200),
            //         ).then((value) {});
            //       },
            //       child: Container(
            //         height: 48.h,
            //         width: 73.w,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(15.r),
            //           border: Border.all(color: AppColors().black),
            //         ),
            //         child: Padding(
            //           padding: const EdgeInsets.all(8),
            //           child: Row(
            //             children: [
            //               Text(
            //                 '1960',
            //                 style: GoogleFonts.poppins(
            //                   fontSize: 14.sp,
            //                   fontWeight: FontWeight.w400,
            //                 ),
            //               ),
            //               const Spacer(),
            //               const Icon(Icons.expand_more)
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors().wGrey,
                    border: Border.all(color: AppColors().black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          m,
                          style: GoogleFonts.poppins(
                            color: AppColors().grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        InkWell(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2200),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: AppColors().purple, // <-- SEE HERE
                                      onPrimary:AppColors().white, // <-- SEE HERE
                                      onSurface: AppColors().purple, // <-- SEE HERE
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        backgroundColor: AppColors().wGrey, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            ).then((value) {
                              setState(() {
                                m = value != null ? value.month.toString() : 'MM';
                                d = value != null ? value.day.toString() : 'DD';
                                y = value != null ? value.year.toString() : 'YYYY';
                              });
                            });
                          },
                          child: const Icon(Icons.expand_more),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors().wGrey,
                    border: Border.all(color: AppColors().black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          d,
                          style: GoogleFonts.poppins(
                            color: AppColors().grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        InkWell(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2200),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: AppColors().purple, // <-- SEE HERE
                                      onPrimary:AppColors().white, // <-- SEE HERE
                                      onSurface: AppColors().purple, // <-- SEE HERE
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        backgroundColor: AppColors().wGrey, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            ).then((value) {
                              setState(() {
                                m = value != null ? value.month.toString() : 'MM';
                                d = value != null ? value.day.toString() : 'DD';
                                y = value != null ? value.year.toString() : 'YYYY';
                              });
                            });
                          },
                          child: const Icon(Icons.expand_more),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors().wGrey,
                    border: Border.all(color: AppColors().black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          y,
                          style: GoogleFonts.poppins(
                            color: AppColors().grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        InkWell(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2200),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: AppColors().purple, // <-- SEE HERE
                                      onPrimary:AppColors().white, // <-- SEE HERE
                                      onSurface: AppColors().purple, // <-- SEE HERE
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        backgroundColor: AppColors().wGrey, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            ).then((value) {
                              setState(() {
                                m = value != null ? value.month.toString() : 'MM';
                                d = value != null ? value.day.toString() : 'DD';
                                y = value != null ? value.year.toString() : 'YYYY';
                              });
                            });
                          },
                          child: const Icon(Icons.expand_more),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
