import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/auth/forget_password/verification_code_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class MobileRegisterScreen extends StatefulWidget {
  const MobileRegisterScreen({Key? key}) : super(key: key);

  @override
  State<MobileRegisterScreen> createState() => _MobileRegisterScreenState();
}

class _MobileRegisterScreenState extends State<MobileRegisterScreen> {
  late TextEditingController _frontPhoneController;
  late TextEditingController _phoneController;
  late TapGestureRecognizer _tapGestureRecognizer;
  Color bColor = AppColors().wGrey;
  Color tColor = AppColors().grey;

  @override
  void initState() {
    super.initState();
    _frontPhoneController = TextEditingController();
    _phoneController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = showLearnMore;
  }

  @override
  void dispose() {
    _frontPhoneController.dispose();
    _phoneController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void showLearnMore (){
    print('learn more');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        SizedBox(height: 40.h),
        Row(
          children: [
            SizedBox(
              width: 60.w,
              child: AppTextField(
                textEditingController: _frontPhoneController,
                hintText: '+972',
                keyboardType: TextInputType.phone,
              ),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: AppTextField(
                textEditingController: _phoneController,
                labelText: 'Phone number',
                hintText: '597774041',
                keyboardType: TextInputType.phone,
                suffixIcon: const Icon(Icons.phone),
                onChange: (String x) {
                  if (_phoneController.text.isNotEmpty) {
                    setState(() {
                      bColor = AppColors().purple;
                      tColor = AppColors().white;
                    });
                  } else {
                    setState(() {
                      bColor = AppColors().wGrey;
                      tColor = AppColors().grey;
                    });
                  }
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        RichText(
          text: TextSpan(
            text:
                '''Using your phone number allows you to browse in the stores section, It also helps us personalize your ad experince, and connects you with people you my know, SMS charges my apply. ''',
            style: GoogleFonts.poppins(
              color: AppColors().grey,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: 'learn more',
                recognizer: _tapGestureRecognizer,
                style: GoogleFonts.poppins(
                  color: AppColors().black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        AppButton(
          onPress: () {

          },
          text: 'Send Code',
          buttonColor: bColor,
          fontWeight: FontWeight.w500,
          textColor: tColor,
        ),
      ],
    );
  }
}
