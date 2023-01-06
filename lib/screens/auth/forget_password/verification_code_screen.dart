import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class VerificationCodeScreen extends StatefulWidget {
  // final String email;
  // final String mobileNumber;
  // final String code;
  // final String token;
  // final String mobileType;
  //
  // const VerificationCode(
  //     {Key? key,
  //     required this.email,
  //     required this.mobileNumber,
  //     required this.code,
  //     required this.token,
  //     required this.mobileType})
  //     : super(key: key);

  final String appBarText;
  final String bodyText;

  const VerificationCodeScreen(
      {required this.appBarText, required this.bodyText, Key? key})
      : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  late FocusNode _firstNode;
  late FocusNode _secondNode;
  late FocusNode _thirdNode;
  late FocusNode _fourthNode;
  late FocusNode _fifthNode;
  late FocusNode _sixthNode;
  late TextEditingController _first;
  late TextEditingController _second;
  late TextEditingController _third;
  late TextEditingController _fourth;
  late TextEditingController _fifth;
  late TextEditingController _sixth;
  Color bColor = AppColors().wGrey;
  Color tColor = AppColors().grey;
  @override
  void initState() {
    super.initState();
    _firstNode = FocusNode();
    _secondNode = FocusNode();
    _thirdNode = FocusNode();
    _fourthNode = FocusNode();
    _fifthNode = FocusNode();
    _sixthNode = FocusNode();
    _first = TextEditingController();
    _second = TextEditingController();
    _third = TextEditingController();
    _fourth = TextEditingController();
    _fifth = TextEditingController();
    _sixth = TextEditingController();
  }

  @override
  void dispose() {
    _firstNode.dispose();
    _secondNode.dispose();
    _thirdNode.dispose();
    _fourthNode.dispose();
    _fifthNode.dispose();
    _sixthNode.dispose();
    _first.dispose();
    _second.dispose();
    _third.dispose();
    _fourth.dispose();
    _fifth.dispose();
    _sixth.dispose();
    super.dispose();
  }

  late String newCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.appBarText,
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
          SizedBox(height: 20.h),
          Center(
            child: Container(
              height: 110.h,
              width: 110.w,
              decoration: BoxDecoration(
                color: AppColors().wGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Image(image: AssetImage('assets/images/key.png')),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            'Verification code',
            style: GoogleFonts.poppins(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: AppColors().black,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            widget.bodyText,
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColors().grey,
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Text(
                'Enter Verification code',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors().black,
                ),
              ),
              const Spacer(),
              Text(
                '00:59',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors().black,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _first,
                  focusNode: _firstNode,
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  onChanged: (String value) {
                    if (value.isNotEmpty) _secondNode.requestFocus();
                  },
                  decoration: InputDecoration(
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Expanded(
                child: TextField(
                  controller: _second,
                  focusNode: _secondNode,
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  onChanged: (String value) {
                    if (value.isNotEmpty) _thirdNode.requestFocus();
                  },
                  decoration: InputDecoration(
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Expanded(
                child: TextField(
                  controller: _third,
                  focusNode: _thirdNode,
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  onChanged: (String value) {
                    if (value.isNotEmpty) _fourthNode.requestFocus();
                  },
                  decoration: InputDecoration(
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Expanded(
                child: TextField(
                  controller: _fourth,
                  focusNode: _fourthNode,
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  onChanged: (String value) {
                    if (value.isNotEmpty) _fifthNode.requestFocus();
                  },
                  decoration: InputDecoration(
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Expanded(
                child: TextField(
                  controller: _fifth,
                  focusNode: _fifthNode,
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  onChanged: (String value) {
                    if (value.isNotEmpty) _sixthNode.requestFocus();
                  },
                  decoration: InputDecoration(
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Expanded(
                child: TextField(
                  controller: _sixth,
                  focusNode: _sixthNode,
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  onChanged: (String value){
                    if (_sixth.text.isNotEmpty) {
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
                  decoration: InputDecoration(
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().grey,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Didn\'t receive code?',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColors().grey,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors().red,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 60.h),
          AppButton(
            onPress: () {
            Navigator.pushNamed(context, '/new_password_screen');
            },
            text: 'Verify',
            buttonColor: bColor,
            fontWeight: FontWeight.w500,
            textColor: tColor,
          ),
        ],
      ),
    );
  }
}
