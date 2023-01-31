import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class CompanyStore extends StatefulWidget {
  const CompanyStore({Key? key}) : super(key: key);

  @override
  State<CompanyStore> createState() => _CompanyStoreState();
}

class _CompanyStoreState extends State<CompanyStore>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _pageController = PageController(viewportFraction: 1, initialPage: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
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
        actions: const [
          Image(
            image: AssetImage('assets/images/brand.png'),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            SvgPicture.asset('assets/images/cart.svg'),
            SizedBox(width: 10.w),
            Text(
              'Slogan',
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: AppColors().black,
              ),
            ),
            SizedBox(width: 10.w),
            SvgPicture.asset('assets/images/Search.svg'),
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
        physics: const BouncingScrollPhysics(),
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
          ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            children: [
              SizedBox(height: 10.h),
              TabBar(
                physics: const BouncingScrollPhysics(),
                isScrollable: true,
                indicatorColor: AppColors().purple,
                controller: _tabController,
                labelColor: AppColors().black,
                unselectedLabelColor: AppColors().grey,
                onTap: (int tabIndex) {
                  setState(() {
                    _tabController.index = tabIndex;
                  });
                },
                tabs: [
                  Tab(
                    child: Text(
                      'All',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Laptop',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Gaming PC',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Monitor',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Set',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 240),
                child: GridView.builder(
                    itemCount: 9,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      childAspectRatio: 250 / 180,
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
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/company_product_screen');
                                      },
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
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      text: 'Add to cart',
                                      buttonColor: AppColors().purple,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: AppColors().red,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(height: 30.h),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 240),
                child: GridView.builder(
                    itemCount: 9,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      childAspectRatio: 250 / 180,
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
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/company_product_screen');
                                      },
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
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      text: 'Add to cart',
                                      buttonColor: AppColors().purple,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: AppColors().red,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ],
      ),
    );
  }
}
