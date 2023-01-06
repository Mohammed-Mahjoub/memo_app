import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/auth/forget_password/verification_code_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class MobileForgetScreen extends StatefulWidget {
  const MobileForgetScreen({Key? key}) : super(key: key);

  @override
  State<MobileForgetScreen> createState() => _MobileForgetScreenState();
}

class _MobileForgetScreenState extends State<MobileForgetScreen> {
  late TextEditingController _frontPhoneController;
  late TextEditingController _phoneController;
  Color bColor = AppColors().wGrey;
  Color tColor = AppColors().grey;

  @override
  void initState() {
    super.initState();
    _frontPhoneController = TextEditingController();
    _phoneController = TextEditingController();
  }

  @override
  void dispose() {
    _frontPhoneController.dispose();
    _phoneController.dispose();
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
          'Forgot password',
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 30.h),
          Text(
            'Forgot Password?',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            '''Don't worry!Please enter the phone number associated with your account.''',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().grey,
            ),
          ),
          SizedBox(height: 20.h),
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
          SizedBox(height: 30.h),
          AppButton(
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerificationCodeScreen(
                      appBarText: 'Mobile verification',
                      bodyText: 'Enter the verification code we just sent to your phone number.',
                    ),
                  ));
            },
            text: 'Send Code',
            buttonColor: bColor,
            fontWeight: FontWeight.w500,
            textColor: tColor,
          ),
        ],
      ),
    );
  }
}
