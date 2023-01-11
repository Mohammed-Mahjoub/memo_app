import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';

import '../../utils/colors/app_colors.dart';

class DealerProfile2 extends StatefulWidget {
  const DealerProfile2({Key? key}) : super(key: key);

  @override
  State<DealerProfile2> createState() => _DealerProfile2State();
}

class _DealerProfile2State extends State<DealerProfile2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 50.h),
        child: Column(
          children: [
            TabBar(
              indicatorColor: AppColors().purple,
              controller: _tabController,
              labelColor: AppColors().purple,
              unselectedLabelColor: Colors.black,
              onTap: (int tabIndex) {
                setState(() {
                  _tabController.index = tabIndex;
                });
              },
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.shopping_cart),
                      Text(
                        'Noni',
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.person),
                      Text(
                        'Noni',
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            IndexedStack(
              index: _tabController.index,
              children: [
                Visibility(
                  visible: _tabController.index == 0,
                  child: Column(
                    children: [
                      Container(
                        height: 142.h,
                        width: 375.w,
                        color: AppColors().wGrey,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 80.h,
                                  width: 75.w,
                                  child: Container(
                                    height: 82.h,
                                    width: 72.w,
                                    color: Colors.white,
                                    child: const Icon(Icons.image_outlined),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  height: 30.h,
                                  width: 100.w,
                                  child: AppButton(
                                    onPress: () {},
                                    text: 'New products',
                                    buttonColor: Colors.white,
                                    textColor: Colors.black,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 25.h,
                                  width: 100.w,
                                  child: AppButton(
                                    onPress: () {},
                                    text: 'KSA, Riyadh,A..',
                                    buttonColor: Colors.white,
                                    textColor: Colors.black,
                                    fontSize: 11.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  height: 25.h,
                                  width: 75.w,
                                  child: AppButton(
                                    onPress: () {},
                                    text: 'Rate 5.0',
                                    buttonColor: Colors.white,
                                    textColor: Colors.black,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30.h,
                                  width: 130.w,
                                  child: AppButton(
                                    onPress: () {},
                                    text: 'My customers',
                                    buttonColor: AppColors().purple,
                                    textColor: Colors.white,
                                    fontSize: 13.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  height: 30.h,
                                  width: 130.w,
                                  child: AppButton(
                                    onPress: () {},
                                    text: 'My orders',
                                    buttonColor: AppColors().purple,
                                    textColor: Colors.white,
                                    fontSize: 13.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  height: 30.h,
                                  width: 130.w,
                                  child: AppButton(
                                    onPress: () {},
                                    text: 'Order history',
                                    buttonColor: AppColors().purple,
                                    textColor: Colors.white,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.h),
                        height: 230.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              height: 220.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: AppColors().wGrey,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset('assets/images/pngwing 14.png'),
                                  Text(
                                    'لابتوب اسوس اصدار خاص كرت شاشة RTX 3800',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.delete_outline,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        ' \$50000',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13.sp,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                    width: 130.w,
                                    child: AppButton(
                                      onPress: () {},
                                      text: 'Edit products',
                                      buttonColor: AppColors().purple,
                                      textColor: Colors.white,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Visibility(
                  visible: _tabController.index == 1,
                  child: SizedBox(
                    height: 600.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/customers_reviews');
        },
        child: Text('next'),
      ),
    );
  }
}
