import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
class UploadPortraitOrWideScreen extends StatefulWidget {
  const UploadPortraitOrWideScreen({Key? key}) : super(key: key);

  @override
  State<UploadPortraitOrWideScreen> createState() => _UploadPortraitOrWideScreenState();
}

class _UploadPortraitOrWideScreenState extends State<UploadPortraitOrWideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Upload portrait or wide',
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
            SizedBox(height: 65.h,),
            Text(
              'Videos',
              style: GoogleFonts.poppins(
                color: Colors.transparent,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationThickness: 3,
                shadows: [
                  Shadow(
                    offset: const Offset(0, -20),
                    color: AppColors().purple,
                  )
                ],
                decorationColor: AppColors().purple,
              ),
            ),
            const Divider(
              height: 0,

            ),
            SizedBox(height: 10.h,),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5.h,
                    crossAxisSpacing: 14.w,
                    childAspectRatio: 105 / 110,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: const Image(
                              image: AssetImage('assets/images/Rectangle 899.png'),
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor: AppColors().purple,
                                value: true,
                                shape: CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w,vertical: 10.h),
              child: Text(
                textAlign: TextAlign.center,
                'You can select video for portrait screen or wide screen',
                style: GoogleFonts.poppins(fontSize: 13.sp),
              ),
            ),
            SizedBox(height: 13.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
              child: AppButton(
                onPress: () {
                  Navigator.pushNamed(context, '/select_screen');
                },
                text: 'Next',
                buttonColor: AppColors().purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
