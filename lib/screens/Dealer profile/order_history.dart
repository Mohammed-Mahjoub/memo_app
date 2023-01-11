import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_text_field.dart';

import '../../utils/colors/app_colors.dart';

class order_history extends StatefulWidget {
  const order_history({Key? key}) : super(key: key);

  @override
  State<order_history> createState() => _order_historyState();
}

class _order_historyState extends State<order_history>
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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Order history',
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
      body: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
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
                    child: Text(
                      'Customer orders',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'My order',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  const Icon(Icons.filter_list),
                  const Text('All'),
                  const Spacer(),
                  SizedBox(
                    height: 35.h,
                    width: 120.w,
                    child: AppTextField(
                      textEditingController: _textEditingController,
                      hintText: 'Search',
                      keyboardType: TextInputType.text,
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              IndexedStack(
                index: _tabController.index,
                children: [
                  Visibility(
                    visible: _tabController.index == 0,
                    child: SizedBox(
                      height: 600.h,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 15.h),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 66.h,
                                      width: 73.w,
                                      child: Image.asset(
                                        'assets/images/pngwing 14.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      'Delivered',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Date: 12/1/2022',
                                          style: GoogleFonts.poppins(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50.w,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Order ID: 2714309247',
                                          style: GoogleFonts.poppins(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 80.w,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Customer profile',
                                          style: GoogleFonts.poppins(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        CircleAvatar(
                                          radius: 10.r,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          'Dkwo',
                                          style: GoogleFonts.poppins(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _tabController.index == 1,
                    child: SizedBox(
                      height: 600.h,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 15.h),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 66.h,
                                      width: 73.w,
                                      child: Image.asset(
                                        'assets/images/pngwing 14.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      'Delivered',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Date: 12/1/2022',
                                          style: GoogleFonts.poppins(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50.w,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                            Icon(Icons
                                                .star_border_purple500_outlined),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Order ID: 2714309247',
                                          style: GoogleFonts.poppins(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 80.w,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Customer profile',
                                          style: GoogleFonts.poppins(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        CircleAvatar(
                                          radius: 10.r,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          'Dkwo',
                                          style: GoogleFonts.poppins(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/DealerProfile2');
          },
          child: Text('next'),
        ),
      ),
    );
  }
}
