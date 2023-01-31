import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors/app_colors.dart';

class ViewsHistory extends StatefulWidget {
  const ViewsHistory({Key? key}) : super(key: key);

  @override
  State<ViewsHistory> createState() => _ViewsHistoryState();
}

class _ViewsHistoryState extends State<ViewsHistory> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
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
          'Views history ',
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              'Select',
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: AppColors().black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              indicatorColor: AppColors().purple,
              controller: _tabController,
              labelColor: AppColors().purple,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 40.w),
              labelStyle: GoogleFonts.poppins(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: AppColors().purple,
              onTap: (int tabIndex) {
                setState(() {
                  _tabController.index = tabIndex;
                });
              },
              tabs: [
                Tab(
                  child:  _tabController.index ==0 ?SvgPicture.asset('assets/images/1svgexport-12 1.svg',width: 24.w,height: 24.h,):SvgPicture.asset('assets/images/svgexport-12 1.svg',width: 24.w,height: 24.h,),
                ),
                Tab(
                  child: _tabController.index ==1 ? SvgPicture.asset('assets/images/1Vector.svg',width: 22.w,height: 15.h,):SvgPicture.asset('assets/images/Vector.svg',width: 22.w,height: 15.h,),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Text('Today',style: GoogleFonts.poppins(color: Colors.grey),),
            SizedBox(height: 15.h,),
            IndexedStack(
              index: _tabController.index,
              children: [
                Visibility(
                  visible: _tabController.index == 0,
                  child:  GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 9,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10.h,
                          crossAxisSpacing: 10.w,
                          childAspectRatio: 166 / 227,
                        ),
                        itemBuilder: (context, index) {
                          return Stack(
                              children: [
                                Container(
                                  child: const Image(
                                    image: AssetImage('assets/images/reels.png'),
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 5.h,
                                  right: 10.w,
                                  child: Row(
                                    children: [
                                      Text(
                                        '1110',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.sp,
                                          color: AppColors().white,
                                        ),
                                      ),
                                      SizedBox(width: 5.w),
                                      Icon(
                                        Icons.visibility_outlined,
                                        size: 20,
                                        color: AppColors().white,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            );

                        }),
                ),
                Visibility(
                  visible: _tabController.index == 1,
                  child:ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                color: AppColors().wGrey,
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 5.h),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding:
                                                EdgeInsets.symmetric(horizontal: 5.w),
                                                height: 40.h,
                                                width: 100.w,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: AppColors().purple,
                                                    width: 1,
                                                  ),
                                                  borderRadius: BorderRadius.circular(5.r),
                                                ),
                                                child: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 12.5.r,
                                                      child: Image.asset(
                                                          'assets/images/profile.png'),
                                                    ),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '105k',
                                                              style: GoogleFonts.poppins(
                                                                fontWeight: FontWeight.w600,
                                                                fontSize: 11.sp,
                                                                color: AppColors().black,
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons.remove_red_eye_outlined,
                                                              size: 13.h,
                                                            )
                                                          ],
                                                        ),
                                                        Text(
                                                          'المحترف الرقمي',
                                                          textAlign: TextAlign.center,
                                                          style: GoogleFonts.poppins(
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 10.sp,
                                                            color: AppColors().black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              SizedBox(
                                                width: 175.w,
                                                child: Text(
                                                  'أفضل قطعة إيم من شركة صينية اصدار البرو Armorx الإحترافية اللاحدود لها',
                                                  textAlign: TextAlign.end,
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 11.sp,
                                                    color: AppColors().black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 25.w),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          right: 1,
                                          top: 5,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.more_vert,
                                              color: AppColors().black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/video_screen');
                                      },
                                      onLongPress: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(10.r),
                                                      topLeft: Radius.circular(10.r),
                                                    ),
                                                    color: Colors.white),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.w,
                                                    vertical: 15.h,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.pop(context);
                                                        },
                                                        child: SvgPicture.asset(
                                                          'assets/images/Vector1.svg',
                                                        ),
                                                      ),
                                                      SizedBox(height: 8.h),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/images/Vector2.svg',
                                                          ),
                                                          SizedBox(width: 10.w),
                                                          Text(
                                                            'Block',
                                                            style: GoogleFonts.poppins(
                                                                fontSize: 15.sp),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 8.h),
                                                      const Divider(),
                                                      SizedBox(height: 8.h),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/images/Vector2.svg',
                                                          ),
                                                          SizedBox(width: 10.w),
                                                          Text(
                                                            'Not interested',
                                                            style: GoogleFonts.poppins(
                                                                fontSize: 15.sp),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 8.h),
                                                      const Divider(),
                                                      SizedBox(height: 8.h),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/images/Vector2.svg',
                                                          ),
                                                          SizedBox(width: 10.w),
                                                          Text(
                                                            'Don\'t recommend account',
                                                            style: GoogleFonts.poppins(
                                                                fontSize: 15.sp),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 8.h),
                                                      const Divider(),
                                                      SizedBox(height: 8.h),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/images/Group 631.svg',
                                                          ),
                                                          SizedBox(width: 10.w),
                                                          Text(
                                                            'Report',
                                                            style: GoogleFonts.poppins(
                                                                fontSize: 15.sp),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 8.h),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                            backgroundColor: Colors.transparent);
                                      },
                                      child: Image(
                                        image: const AssetImage('assets/images/videos.png'),
                                        height: 180.h,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
