import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscure = true;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
          'Login',
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
          AppTextField(
            textEditingController: _emailController,
            labelText: 'Email / Username',
            hintText: 'email@app.com',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20.h),
          AppTextField(
            textEditingController: _passwordController,
            hintText: '********',
            labelText: 'Password',
            keyboardType: TextInputType.text,
            obscure: obscure,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              icon: Icon(obscure ? Icons.visibility : Icons.visibility_off),
            ),
          ),
          SizedBox(height: 5.h),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forget_screen');
              },
              child: Text(
                'Forgot password?',
                style: GoogleFonts.poppins(
                  color: AppColors().black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          AppButton(
            onPress: () {
              Navigator.pushNamed(context, '/bn_screens');
            },
            text: 'Login',
            buttonColor: AppColors().purple,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
