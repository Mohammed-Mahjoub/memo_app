import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/models/city.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController(viewportFraction: 1, initialPage: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  int? selectedItem;
  List<City> genders = <City>[
    City(id: 1, name: 'Gaza'),
    City(id: 2, name: 'Rafah'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            SizedBox(width: 5.w),
            Expanded(
              child: Container(
                height: 30.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors().black, width: 1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: DropdownButton<int>(
                  isExpanded: true,
                  hint: Text(
                    'City',
                    style: GoogleFonts.poppins(),
                  ),
                  underline: const SizedBox(),
                  dropdownColor: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  items: genders.map((gender) {
                    return DropdownMenuItem<int>(
                      value: gender.id,
                      child: Text(gender.name),
                    );
                  }).toList(),
                  onChanged: (int? value) {
                    setState(() {
                      selectedItem = value;
                    });
                  },
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  value: selectedItem,
                ),
              ),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Container(
                height: 30.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors().black, width: 1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: DropdownButton<int>(
                  isExpanded: true,
                  hint: Text(
                    'Area',
                    style: GoogleFonts.poppins(),
                  ),
                  underline: const SizedBox(),
                  dropdownColor: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  items: genders.map((gender) {
                    return DropdownMenuItem<int>(
                      value: gender.id,
                      child: Text(gender.name),
                    );
                  }).toList(),
                  onChanged: (int? value) {
                    setState(() {
                      selectedItem = value;
                    });
                  },
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  value: selectedItem,
                ),
              ),
            ),
            SizedBox(width: 15.w),
            SvgPicture.asset(
              'assets/images/Search.svg',
              width: 24.w,
              height: 24.h,
            ),
          ],
        ),
        leading: Row(
          children: [
            SizedBox(width: 5.w),
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors().purple),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.location_on_outlined,
                  color: AppColors().purple,
                ),
              ),
            ),
          ],
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
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsetsDirectional.only(end: index != 5 ? 10 : 0),
                  elevation: 1,
                  color: Colors.white,
                  child: const Image(
                    image: AssetImage('assets/images/shop.png'),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            children: [
              SizedBox(height: 10.h),
              TabBar(
                indicatorColor: AppColors().purple,
                controller: _tabController,
                labelColor: AppColors().black,
                unselectedLabelColor: AppColors().grey,
                // indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding:
                    EdgeInsetsDirectional.symmetric(horizontal: 20.w),
                onTap: (int tabIndex) {
                  setState(() {
                    _tabController.index = tabIndex;
                  });
                },
                tabs: [
                  Tab(
                    child: Text(
                      'Gaming',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Electronics',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'LifeStyle',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Sellers',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors().black,
                ),
              ),
              SizedBox(height: 10.h),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 160),
                child: GridView.builder(
                    itemCount: 9,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      childAspectRatio: 160 / 130,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/dealer_store');
                                    // Navigator.pushNamed(
                                    //     context, '/product_screen');
                                  },
                                  child: Card(
                                    elevation: 2,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 8.h),
                                      child: const Image(
                                        image: AssetImage(
                                            'assets/images/product.png'),
                                        height: 100,
                                        width: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 3.h),
                            Text(
                              'Laptop and pc gaming',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors().black,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 10.h),
              Text(
                'Shop',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors().black,
                ),
              ),
              SizedBox(height: 10.h),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.h,
                    crossAxisSpacing: 5.w,
                    childAspectRatio: 160 / 140,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/company_store');
                      },
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: AppColors().wGrey,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors().grey,width: 1),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                width: double.infinity,
                                child: Center(
                                  child: SizedBox(
                                    height: 100.h,
                                    width: 100.w,
                                    child: const Image(
                                      image: AssetImage('assets/images/product.png'),
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              'Laptop and PC gaming',
                              style: GoogleFonts.poppins(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors().black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
