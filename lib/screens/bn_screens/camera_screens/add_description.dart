import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils/colors/app_colors.dart';

class AddDescription extends StatefulWidget {
  const AddDescription({Key? key}) : super(key: key);

  @override
  State<AddDescription> createState() => _AddDescriptionState();
}

class _AddDescriptionState extends State<AddDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Add description',
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
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
            maxLines: 30,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            hintText: 'Add description...',
          ),
          onSubmitted: (value) {
            Navigator.pop(context);
          },
          ),
      ),

    );
  }
}
