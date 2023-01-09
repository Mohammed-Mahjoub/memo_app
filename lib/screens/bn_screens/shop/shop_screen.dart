import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/models/city.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  late PageController _pageController;

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
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors().purple,
                ),
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
            SizedBox(width: 15.w),
            Expanded(
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
            SizedBox(width: 15.w),
            Expanded(
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
            SizedBox(width: 15.w),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: AppColors().black,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
                  child: Image(
                    image: AssetImage('assets/images/shop.png'),
                    fit: BoxFit.cover,
                  ),
                );
              },
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
                childAspectRatio: 160 / 110,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: AppColors().wGrey,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/product.png'),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 3.h),
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
    );
  }
}
