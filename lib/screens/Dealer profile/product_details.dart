import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/widgets/app_button.dart';
import '../../utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late TextEditingController textEditingController1;
  late TextEditingController textEditingController2;
  late TextEditingController textEditingController3;
  late TextEditingController textEditingController4;
  late TextEditingController textEditingController5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController1 = TextEditingController();
    textEditingController2 = TextEditingController();
    textEditingController3 = TextEditingController();
    textEditingController4 = TextEditingController();
    textEditingController5 = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController1.dispose();
    textEditingController2.dispose();
    textEditingController3.dispose();
    textEditingController4.dispose();
    textEditingController5.dispose();
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
          'New products',
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
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 145.h,
                child: Center(
                  child: Image.asset('assets/images/Frame.png'),
                ),
              ),
              Container(
                color: AppColors().wGrey,
                height: 40.h,
                child: Center(
                  child: Text(
                    'Product details',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: AppColors().purple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      textEditingController: textEditingController1,
                      hintText: 'Brand',
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Expanded(
                    child: AppTextField(
                      textEditingController: textEditingController1,
                      hintText: 'Product status',
                      keyboardType: TextInputType.text,
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              AppTextField(
                textEditingController: textEditingController1,
                hintText: 'Name*',
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 10.h,
              ),
              AppTextField(
                textEditingController: textEditingController1,
                hintText: 'Description',
                keyboardType: TextInputType.text,
                maxline: 8,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      textEditingController: textEditingController1,
                      hintText: 'Price (Option)',
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Expanded(
                    child: AppTextField(
                      textEditingController: textEditingController1,
                      hintText: 'Discount (Option)',
                      keyboardType: TextInputType.text,
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              AppTextField(
                textEditingController: textEditingController1,
                hintText: 'Final price*',
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 20.h,
              ),
              AppButton(
                onPress: () {
                  Navigator.pushNamed(context, '/ProductPhoto');
                },
                text: 'Next',
                buttonColor: AppColors().purple,
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
