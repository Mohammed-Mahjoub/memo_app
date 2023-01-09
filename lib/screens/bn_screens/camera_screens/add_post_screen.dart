import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';

import '../../../../../utils/colors/app_colors.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  int _indexVis = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Portrait Screen',
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
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 134.h,
                  width: 228.w,
                  color: AppColors().wGrey,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'You can add details to the video.. ',
                        hintStyle: GoogleFonts.poppins(fontSize: 13.sp),
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none),
                    minLines: 5,
                    maxLines: 5,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                InkWell(
                  child: SizedBox(
                    height: 130.h,
                    width: 100.w,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/camera_image.png'),
                        Positioned(
                          bottom: 0,
                          child: Text(
                            'Select Cover',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/select_cover_screen');
                  },
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _indexVis = 0;
                    });
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      width: 50.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(color: AppColors().purple),
                      ),
                      child: Text(
                        'All',
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: AppColors().purple,
                        ),
                        textAlign: TextAlign.center,
                      )),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _indexVis = 1;
                    });
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      width: 100.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(color: AppColors().purple),
                      ),
                      child: Text(
                        '# Hashtag',
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: AppColors().purple,
                        ),
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/mention_screen');
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      width: 100.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(color: AppColors().purple),
                      ),
                      child: Text(
                        '@ Mention',
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: AppColors().purple,
                        ),
                      )),
                ),
              ],
            ),
            const Divider(),
            Visibility(
              visible: _indexVis == 0,
              child: Container(
                height: 500.h,
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/tap_people_screen');
                      },
                      leading: const Icon(Icons.person_outline_outlined),
                      title: Text(
                        'Tag People',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: AppColors().black,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/locations_screen');
                      },
                      leading: const Icon(Icons.location_on_outlined),
                      title: Text(
                        'Location',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: AppColors().black,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                      },
                      leading: const Icon(Icons.lock_open),
                      title: Text(
                        'Visible to Everyone',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: AppColors().black,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                    ListTile(
                        leading: const Icon(Icons.mark_unread_chat_alt_sharp),
                        title: Text(
                          'Allow Comment',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: AppColors().black,
                          ),
                        ),
                        trailing: Switch(
                          onChanged: (value) {},
                          value: true,
                          activeColor: Colors.white,
                          activeTrackColor: AppColors().purple,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        )),
                    ListTile(
                        leading: const Icon(Icons.video_library_outlined),
                        title: Text(
                          'Allow download video',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: AppColors().black,
                          ),
                        ),
                        trailing: Switch(
                          onChanged: (value) {},
                          value: true,
                          activeColor: Colors.white,
                          activeTrackColor: AppColors().purple,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        )),
                    ListTile(
                        leading: const Icon(Icons.download_outlined),
                        title: Text(
                          'Save to drive',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: AppColors().black,
                          ),
                        ),
                        trailing: Switch(
                          onChanged: (value) {},
                          value: true,
                          activeColor: Colors.white,
                          activeTrackColor: AppColors().purple,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        )),
                    Text(
                      'Automatically share to:',
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 65.h,
                      child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            child: CircleAvatar(
                              backgroundColor: AppColors().purple,
                              child: Image.asset('assets/images/twitter.png'),
                            ),
                          );
                        },
                      ),
                    ),
                    const Divider(),
                    AppButton(
                      buttonColor: AppColors().purple,
                      onPress: () {
                        Navigator.pushNamed(context, '/upload_portrait_or_wide_screen');
                      },
                      text: 'Portrait Upload',
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
                visible: _indexVis == 1,
                child: SizedBox(
                  height: 500.h,
                  child: ListView.builder(
                    itemExtent: 50,
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Text(
                            '#ga',
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '2.6B views',
                            style: GoogleFonts.poppins(
                                fontSize: 15.sp, color: AppColors().grey),
                          )
                        ],
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
