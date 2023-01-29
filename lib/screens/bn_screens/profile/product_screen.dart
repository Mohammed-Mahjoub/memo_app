import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late PageController _pageController;
  bool visibility = false;
  bool visibility2 = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
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
            Icon(
              Icons.shopping_cart_outlined,
              color: AppColors().purple,
            ),
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
            constraints: BoxConstraints(maxHeight: 150.h),
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
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          const Icon(Icons.videocam_outlined),
                          SizedBox(width: 15.w),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: AppColors().purple,
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(vertical: 3.h,horizontal: 5.w),
                              child: Row(
                                children: [
                                  Text(
                                    '1/3',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors().white,
                                    ),
                                  ),
                                  SizedBox(width: 3.w),
                                  SvgPicture.asset('assets/images/Image.svg'),
                                ],
                              ),
                            ),
                          ),
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
                    text: 'Purchase order',
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
                          ? Icons.arrow_drop_up_outlined
                          : Icons.arrow_drop_down_sharp,
                      size: 35,
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
                          const Icon(Icons.favorite_border, color: Colors.red),
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
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
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
                    'Similar products',
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
                        visibility2 = !visibility2;
                      });
                    },
                    icon: Icon(
                      visibility2
                          ? Icons.arrow_drop_up_outlined
                          : Icons.arrow_drop_down_sharp,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: visibility2,
            replacement: const SizedBox(height: 0),
            child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: 9,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                  childAspectRatio: 120 / 180,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: AppColors().wGrey,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {},
                                  child: const Image(
                                    image:
                                        AssetImage('assets/images/product.png'),
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Expanded(
                                child: Text(
                                  'Laptop and PC gaming Laptop and PC gaming Laptop and PC gaming Laptop and PC gaming',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors().black,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '5,500\$',
                                  style: GoogleFonts.poppins(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors().red,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                              SizedBox(height: 5.h),
                              SizedBox(
                                height: 40,
                                child: AppButton(
                                  onPress: () {},
                                  text: 'Purchase order',
                                  buttonColor: AppColors().purple,
                                ),
                              ),
                              SizedBox(height: 10.h),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
