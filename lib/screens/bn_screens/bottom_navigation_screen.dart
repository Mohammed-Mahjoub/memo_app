import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/models/bn_screen.dart';
import 'package:memo_app/screens/bn_screens/cart_screen.dart';
import 'package:memo_app/screens/bn_screens/add_screen.dart';
import 'package:memo_app/screens/bn_screens/home/home_screen.dart';
import 'package:memo_app/screens/bn_screens/chat_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/profile_screen.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<BnScreen> screens = <BnScreen>[
      const BnScreen(title: 'home', widget: HomeScreen()),
      const BnScreen(title: 'cart', widget: CartScreen()),
      const BnScreen(title: 'add', widget: AddScreen()),
      const BnScreen(title: 'chat', widget: ChatScreen()),
      const BnScreen(title: 'profile', widget: ProfileScreen()),
    ];
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   iconTheme: IconThemeData(color: AppColors().black),
      //   title: Text(
      //     screens[_selectedPageIndex].title,
      //     style: GoogleFonts.poppins(
      //       fontSize: 17.sp,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors().black,
      //     ),
      //   ),
      //   actions: [
      //     Visibility(
      //       visible: screens[_selectedPageIndex].title == 'cart',
      //       child: IconButton(
      //         onPressed: () {
      //           // CartGetxController.to.clear();
      //         },
      //         icon: const Icon(
      //           Icons.delete,
      //           color: Colors.red,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: screens[_selectedPageIndex].widget,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          onTap: (int selectedPageIndex) {
            setState(() => _selectedPageIndex = selectedPageIndex);
          },
          currentIndex: _selectedPageIndex,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          selectedIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          selectedLabelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 10.sp,
          ),
          selectedFontSize: 14.sp,
          unselectedItemColor: Colors.grey.shade400,
          unselectedIconTheme: IconThemeData(
            color: Colors.grey.shade800,
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 11.sp,
          ),
          unselectedFontSize: 12.sp,
          iconSize: 24,
          elevation: 20,
          items:const [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.grey,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.chat,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.chat,
                color: Colors.grey,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
