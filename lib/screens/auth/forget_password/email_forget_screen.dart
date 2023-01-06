import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/screens/auth/forget_password/verification_code_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class EmailForgetScreen extends StatefulWidget {
  const EmailForgetScreen({Key? key}) : super(key: key);

  @override
  State<EmailForgetScreen> createState() => _EmailForgetScreenState();
}

class _EmailForgetScreenState extends State<EmailForgetScreen> {
  late TextEditingController _emailController;
  Color bColor = AppColors().wGrey;
  Color tColor = AppColors().grey;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
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
            '''we’ll email you a code to reset your password.''',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().grey,
            ),
          ),
          SizedBox(height: 20.h),
          AppTextField(
            textEditingController: _emailController,
            labelText: 'Email address',
            hintText: 'email@app.com',
            keyboardType: TextInputType.emailAddress,
            suffixIcon: const Icon(Icons.phone),
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
          SizedBox(height: 30.h),
          AppButton(
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerificationCodeScreen(
                      appBarText: 'Email verification',
                      bodyText: 'We have sent code to you email: Ta***92@gmail.com',
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
