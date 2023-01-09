import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils/colors/app_colors.dart';
class AddHashtag extends StatefulWidget {
  const AddHashtag({Key? key}) : super(key: key);

  @override
  State<AddHashtag> createState() => _AddHashtagState();
}

class _AddHashtagState extends State<AddHashtag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Add Hashtag',
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
      body:  TextField(
        maxLines: 30,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Add Hashtag...',
        ),
        onSubmitted: (value) {
          Navigator.pop(context);
        },
      ),

    );
  }
}
