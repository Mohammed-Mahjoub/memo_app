import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class EmailRegisterScreen extends StatefulWidget {
  const EmailRegisterScreen({Key? key}) : super(key: key);

  @override
  State<EmailRegisterScreen> createState() => _EmailRegisterScreenState();
}

class _EmailRegisterScreenState extends State<EmailRegisterScreen> {
  late TextEditingController _emailController;
  late TapGestureRecognizer _tapGestureRecognizer;
  late TapGestureRecognizer _tap2GestureRecognizer;
  Color bColor = AppColors().wGrey;
  Color tColor = AppColors().grey;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = showTerms;
    _tap2GestureRecognizer = TapGestureRecognizer()..onTap = showPolicies;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _tapGestureRecognizer.dispose();
    _tap2GestureRecognizer.dispose();
    super.dispose();
  }

  void showTerms() {
    print('Terms');
  }

  void showPolicies() {
    print('Policies');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        SizedBox(height: 40.h),
        AppTextField(
          textEditingController: _emailController,
          labelText: 'Email / Username',
          hintText: '',
          keyboardType: TextInputType.text,
          suffixIcon: IconButton(
            onPressed: () {
              _emailController.clear();
              setState(() {
                bColor = AppColors().wGrey;
                tColor = AppColors().grey;
              });
            },
            icon: const Icon(Icons.close),
          ),
          onChange: (String x) {
            if (_emailController.text.isNotEmpty) {
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
           Navigator.pushNamed(context, '/register_data_screen');
          },
          text: 'Next',
          buttonColor: bColor,
          fontWeight: FontWeight.w500,
          textColor: tColor,
        ),
      ],
    );
  }
}
