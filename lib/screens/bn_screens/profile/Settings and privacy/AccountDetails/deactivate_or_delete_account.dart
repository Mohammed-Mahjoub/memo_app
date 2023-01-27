import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/colors/app_colors.dart';

class DeactivateOrDeleteAccount extends StatefulWidget {
  const DeactivateOrDeleteAccount({Key? key}) : super(key: key);

  @override
  State<DeactivateOrDeleteAccount> createState() =>
      _DeactivateOrDeleteAccountState();
}

class _DeactivateOrDeleteAccountState extends State<DeactivateOrDeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deactivate or delete account?',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'If you want to leave Memo temporarily, simply deactive your account. If you choose to delete ypur account instead, you won’t be able to recover it after 30 days.',
              style: GoogleFonts.poppins(fontSize: 13.sp, color: Colors.grey),
            ),
            SizedBox(
              height: 30.h,
            ),
            ListTile(
              title: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                    color: Colors.white),
                child: Row(
                  children: [
                    Text(
                      'Deactivate account',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/deactivate_or_delete_account');
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'No one can see your account, including all content that is stored in it. Reactivate your account and recover all content anytime.',
              style: GoogleFonts.poppins(fontSize: 13.sp, color: Colors.grey),
            ),
            const Divider(),
            ListTile(
              title: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                width: 304.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                    color: Colors.white),
                child: Row(
                  children: [
                    Text(
                      'Delete account permanently',
                      style: GoogleFonts.poppins(fontSize: 13.sp),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/deactivate_or_delete_account');
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
                'Your account and content will be deleted permanently. youmaycancel the deletion request by reactivating your account within 30days.'
                ,              style: GoogleFonts.poppins(fontSize: 13.sp, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
