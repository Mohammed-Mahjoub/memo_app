import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscure = true;
  bool obscure2 = true;
  int? code;
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _phoneController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
          'Register',
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
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: AppColors().black,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 30.h),
          AppTextField(
            textEditingController: _nameController,
            labelText: 'First name',
            hintText: 'Mohammed',
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 20.h),
          AppTextField(
            textEditingController: _emailController,
            labelText: 'Last name',
            hintText: 'Mahjoub',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20.h),
          Text(
            'Phone number',
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().black,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 60.w,
                child: AppTextField(
                  textEditingController: _emailController,
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
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Text(
            'The phone number allows you to fully access the store',
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().grey,
            ),
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
          SizedBox(height: 20.h),
          AppTextField(
            textEditingController: _confirmPasswordController,
            hintText: '********',
            labelText: 'Confirm password',
            keyboardType: TextInputType.text,
            obscure: obscure2,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscure2 = !obscure2;
                });
              },
              icon: Icon(obscure2 ? Icons.visibility : Icons.visibility_off),
            ),
          ),

          SizedBox(height: 10.h),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              Text(
                'I have read and agreed',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors().grey,
                ),
              ),
              Text(
                ' terms & conditions',
                style: GoogleFonts.poppins(
                  color: AppColors().red,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          AppButton(
            onPress: () {},
            text: 'Register',
            buttonColor: AppColors().purple,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
