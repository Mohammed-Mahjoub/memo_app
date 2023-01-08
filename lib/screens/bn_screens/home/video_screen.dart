import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
            child: Row(
              children: [
                Container(
                  height: 45.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors().purple,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20.h,
                                width: 20.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/profile.png')),
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                '1110',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                  color: AppColors().black,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Mohammed Mahjoub',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                              color: AppColors().black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    '''The best part I'm from a Chinese company issuing the Armorx Pro Unlimited Professional''',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      color: AppColors().black,
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                ),
              ],
            ),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Row(
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
                    const Icon(Icons.info_outline),
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
                        Icon(
                          Icons.save,
                          color: AppColors().blue,
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
                        Icon(
                          Icons.share,
                          color: AppColors().black,
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
                SizedBox(height: 10.h),
                Text(
                  '''#game #lookup #Apex #لعبة_جديدة# الكويت #memo #mopilegame #suikoden #apex #ps''',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                    color: AppColors().grey,
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
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
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ],
      ),
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