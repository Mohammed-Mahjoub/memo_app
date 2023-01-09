import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class TagPeopleScreen extends StatefulWidget {
  const TagPeopleScreen({Key? key}) : super(key: key);

  @override
  State<TagPeopleScreen> createState() => _TagpeopleScreenState();
}

class _TagpeopleScreenState extends State<TagPeopleScreen> {
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
          'Tag people',
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
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
              child: AppTextField(
                textEditingController: _textEditingController,
                hintText: 'Who’s in this video?',
                keyboardType: TextInputType.text,
                prefixIcon: Icon(Icons.search),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    trailing: Radio(
                      value: false,
                      groupValue: '',
                      onChanged: (value) {},
                    ),
                    leading: CircleAvatar(
                      radius: 25.r,
                      backgroundImage:
                          const AssetImage('assets/images/Ellipse 3.png'),
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
            Visibility(
              child: AppButton(
                onPress: () {},
                text: 'Done(0)',
                buttonColor: AppColors().purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
