import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/utils/colors/app_colors.dart';
import 'package:memo_app/widgets/app_text_field.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController _textEditingController;
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Inbox',
                style: GoogleFonts.poppins(
                    fontSize: 17.sp, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/new_message_screen');
                },
                icon: const Icon(Icons.chat),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: SizedBox(
            height: 50.h,
            child: AppTextField(
              textEditingController: _textEditingController,
              hintText: 'Search... ',
              keyboardType: TextInputType.text,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        TabBar(
          indicatorColor: Colors.black,
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black,
          onTap: (int tabIndex) {
            setState(() {
              _tabController.index = tabIndex;
            });
          },
          tabs: [
            Tab(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.email_outlined,
                  ),
                  Text(
                    'Messages',
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.chat_outlined,
                  ),
                  Text(
                    'Comment',
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(CupertinoIcons.heart_fill),
                  Text(
                    'Like',
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),
            Tab(
              height: 50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.person_add_alt,
                  ),
                  Text(
                    'follower',
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        IndexedStack(
          index: _tabController.index,
          children: [
            Visibility(
              visible: _tabController.index == 0,
              child: SizedBox(
                height: 500.h,
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onLongPress: () {
                        showBottomSheet(
                          elevation: 3,
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 375.h,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Spacer(),
                                      Text(
                                        'Rama22',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.close),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon:
                                            const Icon(Icons.push_pin_outlined),
                                      ),
                                      Text(
                                        'pin',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons
                                            .notifications_active_outlined),
                                      ),
                                      Text(
                                        'Mute',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                          Icons.delete_outline,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        'Delete',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                          Icons.block,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        'Block',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                          Icons.report_gmailerrorred_outlined,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        'Report',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      leading: CircleAvatar(
                        radius: 25.r,
                        backgroundImage:
                            const AssetImage('assets/images/Rectangle 912.png'),
                      ),
                      title: Text(
                        'new_game_every_day',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15.sp),
                      ),
                      subtitle: Text(
                        'عندي تلفون ببجي اجمل',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15.sp),
                      ),
                      trailing: Text(
                        '3/12',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: AppColors().grey),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                ),
              ),
            ),
            Visibility(
              visible: _tabController.index == 1,
              child: SizedBox(
                height: 500.h,
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25.r,
                        backgroundImage:
                            const AssetImage('assets/images/Rectangle 912.png'),
                      ),
                      title: Text(
                        'new_game_every_day',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15.sp),
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                            'replied to your comment: كنت اقول مثلكيوم كنت طالب ولكن اكتشفت ان السوق ناشفمافي وظائف والواحد لازم يضحي عشان يحصللقمة العيش',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 12.sp,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20.h,
                                width: 1.w,
                                color: AppColors().grey,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'Darku ❤... داركو: اذا انت تدريب بدون رات',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: SizedBox(
                        width: 45.w,
                        height: 55.h,
                        child: Image.asset(
                          'assets/images/Rectangle 912.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                ),
              ),
            ),
            Visibility(
              visible: _tabController.index == 2,
              child: SizedBox(
                height: 500.h,
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25.r,
                        backgroundImage:
                            const AssetImage('assets/images/Rectangle 912.png'),
                      ),
                      title: Text(
                        'new_game_every_day',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15.sp),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'liked your comment:',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 12.sp,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20.h,
                                width: 1.w,
                                color: AppColors().grey,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'Darku ❤... داركو: اذا انت تدريب بدون رات',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: CircleAvatar(
                                    radius: 15.r,
                                    backgroundImage: const AssetImage(
                                        'assets/images/Rectangle 912.png'),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                      trailing: SizedBox(
                        width: 45.w,
                        height: 55.h,
                        child: Image.asset(
                          'assets/images/Rectangle 912.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                ),
              ),
            ),
            Visibility(
              visible: _tabController.index == 3,
              child: SizedBox(
                height: 500.h,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25.r,
                        backgroundImage:
                            const AssetImage('assets/images/Rectangle 912.png'),
                      ),
                      title: Text(
                        'hasan darwish',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15.sp),
                      ),
                      subtitle: Text(
                        'started following you. 8/13',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors().purple,
                          minimumSize: Size(90.w, 30.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            side: const BorderSide(
                              color: Colors.black,
                              width: 3,
                            ),
                          ),
                        ),
                        child: const Text('Follow Back'),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
