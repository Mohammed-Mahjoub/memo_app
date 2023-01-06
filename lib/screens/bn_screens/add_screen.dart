import 'package:flutter/material.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(color: AppColors().wGrey);
  }
}
