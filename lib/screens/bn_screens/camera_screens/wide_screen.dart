import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils/colors/app_colors.dart';
import '../../../../../widgets/app_button.dart';

class WideScreen extends StatefulWidget {
  const WideScreen({Key? key}) : super(key: key);

  @override
  State<WideScreen> createState() => _WideScreenState();
}

class _WideScreenState extends State<WideScreen> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
          'Wide Screen',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.h,
              width: double.infinity,
              color: AppColors().purple,
              child: Image.asset('assets/images/Rectangle 912.png',
                  fit: BoxFit.cover),
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                            width: 110.w,
                            margin: const EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.w, vertical: 11.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              border: Border.all(color: AppColors().purple),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/cam.svg',
                                  color: AppColors().purple,
                                ),
                                SizedBox(width: 5.w),
                                Expanded(
                                  child: Text(
                                    'Upload cover',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      color: AppColors().purple,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Container(
                        height: 60.h,
                        width: 65.w,
                        color: AppColors().purple,
                        child: Image.asset('assets/images/Rectangle 912.png',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        height: 60.h,
                        width: 65.w,
                        color: AppColors().purple,
                        child: Image.asset('assets/images/Rectangle 912.png',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        height: 60.h,
                        width: 65.w,
                        color: AppColors().purple,
                        child: Image.asset('assets/images/Rectangle 912.png',
                            fit: BoxFit.cover),
                      ),
                    ],
                  ),
                  const Divider(),
                  const Text('Title'),
                  TextField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'You can add details to the video..',
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/add_description');
                    },
                    leading: SvgPicture.asset('assets/images/addDesc.svg'),
                    title: Text(
                      'Add description',
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
                      Navigator.pushNamed(context, '/add_hashtag');
                    },
                    leading: SvgPicture.asset('assets/images/hash.svg'),
                    title: Text(
                      'Hashtag',
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
                    leading: SvgPicture.asset('assets/images/location.svg'),
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
                    onTap: () {},
                    leading: SvgPicture.asset('assets/images/lock.svg'),
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
                      leading: SvgPicture.asset('assets/images/commint.svg'),
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
                  SizedBox(
                    height: 20.h,
                  ),
                  AppButton(
                    buttonColor: AppColors().purple,
                    onPress: () {},
                    text: 'Wide Upload',
                    icon: SvgPicture.asset('assets/images/pUpload.svg'),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
