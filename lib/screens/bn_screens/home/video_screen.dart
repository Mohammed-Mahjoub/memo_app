import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late TextEditingController _commentController;

  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10.h),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                            child: Image.asset('assets/images/profile.png'),
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
                    SizedBox(
                      width: 175.w,
                      child: Text(
                        'تختيم لعبة سيكوديم ريميك- البحث في القرية المهجورة شمال القارة العشبية',
                        textAlign: TextAlign.end,
                        style: GoogleFonts.poppins(
                          fontSize: 11.sp,
                          color: AppColors().black,
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                  ],
                ),
              ),
              Positioned(
                right: 10,
                top: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          InkWell(
            onTap: () {},
            child: Image(
              image: const AssetImage('assets/images/videos.png'),
              height: 180.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5.h),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    Text(
                      '3 Days ago',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: AppColors().black,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    SvgPicture.asset(
                      'assets/images/Frame.svg',
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: AppColors().red,
                        ),
                        Text(
                          '134K',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: AppColors().grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15.w),
                    Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/Vector8.svg',
                        ),
                        Text(
                          '124',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: AppColors().grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15.w),
                    Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/Vector9.svg',
                        ),
                        Text(
                          '14',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: AppColors().grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  '''#game #lookup #Apex #لعبة_جديدة# الكويت #memo #mopilegame #suikoden #apex #ps''',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                    color: AppColors().grey,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                color: AppColors().wGrey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Text(
                            '10,6K Comment',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: AppColors().black,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              _showBottomSheet(context);
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Image(
                                image: AssetImage('assets/images/profile.png'),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Brook_IQ',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: AppColors().grey,
                                  ),
                                ),
                                Text(
                                  'any thing any thing any thing any thing',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: AppColors().black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Image(
                                image: AssetImage('assets/images/profile.png'),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Brook_IQ',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: AppColors().grey,
                                  ),
                                ),
                                Text(
                                  'any thing any thing any thing any thing',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: AppColors().black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Image(
                                image: AssetImage('assets/images/profile.png'),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Brook_IQ',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: AppColors().grey,
                                  ),
                                ),
                                Text(
                                  'any thing any thing any thing any thing',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: AppColors().black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      clipBehavior: Clip.antiAlias,
      isScrollControlled: true,
      backgroundColor: Colors.white.withOpacity(0.4),
      context: context,
      builder: (context) {
        return BottomSheet(
          backgroundColor: Colors.white,
          onClosing: () {},
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          Text(
                            '10,6K Comment',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: AppColors().black,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 25.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.fromBorderSide(
                                  BorderSide(
                                    color: AppColors().black,
                                  ),
                                ),
                              ),
                              child: const Center(child: Icon(Icons.close)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 410.h,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30.h,
                                    width: 30.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Image(
                                      image: AssetImage(
                                          'assets/images/profile.png'),
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Brook_IQ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          color: AppColors().grey,
                                        ),
                                      ),
                                      Text(
                                        'any thing any thing any thing any thing',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.sp,
                                          color: AppColors().black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    padding: EdgeInsets.zero,
                                    icon: Icon(
                                      Icons.favorite,
                                      color: AppColors().red,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Container(
                            height: 30.h,
                            width: 30.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Image(
                              image: AssetImage('assets/images/profile.png'),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: AppTextField(
                              textEditingController: _commentController,
                              hintText: 'Add comment',
                              keyboardType: TextInputType.text,
                              fill: AppColors().wGrey,
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.emoji_emotions_outlined,
                                  color: AppColors().black,
                                  size: 25,
                                ),
                                padding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
/*
*
* PageView.builder(
                    controller: _pageController,
                    itemCount: snapshot.data!.slider!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin:
                            EdgeInsetsDirectional.only(end: index != 2 ? 10 : 0),
                        elevation: 1,
                        color: Colors.white,
                        child: Image(
                          image: NetworkImage(
                              snapshot.data!.slider![index].imageUrl!),
                          fit: BoxFit.contain,
                        ),
                        // alignment: Alignment.center,
                      );
                    },
                  )
* */
