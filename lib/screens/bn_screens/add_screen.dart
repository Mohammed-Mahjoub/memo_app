import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_button.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Center(
        child:AppButton(onPress: () {
          Navigator.pushNamed(context, '/add_post_screen');
        }, text: 'New Post'),
      ),
    );
  }
}
