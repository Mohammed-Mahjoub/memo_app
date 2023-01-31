import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import '../../../widgets/app_text_field.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({Key? key}) : super(key: key);

  @override
  State<NewMessageScreen> createState() => _NewMessageScreenState();
}

class _NewMessageScreenState extends State<NewMessageScreen> {
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
          'New message',
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
              'Chat',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 17.sp,
                color: AppColors().black
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'To',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 17.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            AppTextField(
              textEditingController: _textEditingController,
              hintText: 'Search',
              contentPadding: EdgeInsets.symmetric(vertical: 10.h),
              keyboardType: TextInputType.text,
              fill: Colors.transparent,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: SvgPicture.asset('assets/images/Search.svg'),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/conversation_screen');
                    },
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      radius: 25.r,
                      backgroundImage:
                          const AssetImage('assets/images/Ellipse 3.png'),
                    ),
                    trailing: Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: AppColors().purple,
                        value: true,
                        shape: CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {});
                        },
                      ),
                    ),
                    title: Text(
                      'data',
                      style: GoogleFonts.poppins(fontSize: 15.sp),
                    ),
                    subtitle: Text(
                      'data',
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp, color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
