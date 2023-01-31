import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class CompanyProductScreen extends StatefulWidget {
  const CompanyProductScreen({Key? key}) : super(key: key);

  @override
  State<CompanyProductScreen> createState() => _CompanyProductScreenState();
}

class _CompanyProductScreenState extends State<CompanyProductScreen> {
  late PageController _pageController;
  bool visibility = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1, initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(image: const AssetImage('assets/images/profile.png'),width: 25.w,height: 25.h,),
            SizedBox(width: 5.w),
            Text(
              'Slogan',
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: AppColors().black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: AppColors().black,),),
        ],
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
        children: [
          SizedBox(height: 10.h),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 200.h),
            child: PageView.builder(
              controller: _pageController,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsetsDirectional.only(end: index != 5 ? 10 : 0),
                  elevation: 1,
                  color: Colors.white,
                  child: const Image(
                    image: AssetImage('assets/images/slogan.png'),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.infinity,
            height: 48.h,
            decoration: BoxDecoration(
              color: AppColors().wGrey,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 16.w),
              child: Row(
                children: [
                  Text(
                    'SONY',
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors().black,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: AppColors().black, width: 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 10.w),
                      child: Row(
                        children: [
                          Text(
                            '1/3',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors().black,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          SvgPicture.asset('assets/images/Image.svg',color: AppColors().black,),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Image(
                    image: AssetImage('assets/images/new.png'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Text(
                  'Name',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().grey,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Fore sail Fore sail Fore sail Fore sail Fore sail ',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().black,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Description',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().grey,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Fore sail Fore sail Fore sail Fore sail Fore sailFore sail Fore sail Fore sail Fore sail Fore sailFore sail Fore sail Fore sail Fore sail Fore sailFore sail Fore sail Fore sail Fore sail Fore sailFore sail Fore sail Fore sail Fore sail Fore sailFore sail Fore sail Fore sail Fore sail Fore sail ',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().black,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Price',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().grey,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '5,500\$',
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors().red,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors().white,
                        border: Border.all(
                          color: AppColors().red,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          '-40 %',
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors().red,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      '3,300 \$',
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors().blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.infinity,
            height: 55.h,
            decoration: BoxDecoration(
              color: AppColors().wGrey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 30.w),
                SizedBox(
                  width: 150.w,
                  child: AppButton(
                    onPress: () {},
                    text: 'Add to cart',
                    buttonColor: AppColors().purple,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: AppColors().red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.infinity,
            height: 48.h,
            decoration: BoxDecoration(
              color: AppColors().purple,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 16.w),
              child: Row(
                children: [
                  Text(
                    'Rate',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors().white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                    icon: Icon(
                      visibility
                          ? Icons.expand_less
                          : Icons.expand_more,
                      size: 35,
                      color: AppColors().white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: visibility,
            replacement: const SizedBox(height: 0),
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              itemCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 10.w),
                          Text(
                            '4.1',
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().black,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            '15/11/2022',
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().grey,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Mohammed',
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().black,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset('assets/images/like.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            '0',
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().grey,
                            ),
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Any thing Any thing Any thing Any thing Any thing Any thing Any thing Any thing Any thing Any thing ',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors().grey,
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
