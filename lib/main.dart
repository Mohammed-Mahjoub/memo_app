import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:memo_app/screens/auth/forget_password/email_forget_screen.dart';
import 'package:memo_app/screens/auth/forget_password/forget_screen.dart';
import 'package:memo_app/screens/auth/forget_password/mobile_forget_screen.dart';
import 'package:memo_app/screens/auth/forget_password/new_password_screen.dart';
import 'package:memo_app/screens/auth/login_option_screen.dart';
import 'package:memo_app/screens/auth/login_screen.dart';
import 'package:memo_app/screens/auth/register/main_register_screen.dart';
import 'package:memo_app/screens/auth/register/register_data_screen.dart';
import 'package:memo_app/screens/bn_screens/bottom_navigation_screen.dart';
import 'package:memo_app/screens/bn_screens/home/reel_screen.dart';
import 'package:memo_app/screens/bn_screens/home/video_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/accounts/add_account_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/accounts/add_game_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/drower_screens/liked_screens/liked_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/drower_screens/saved/saved_screen.dart';
import 'package:memo_app/screens/bn_screens/profile/other_user_profile_screens/other_profile_screen.dart';
import 'package:memo_app/screens/wellcome/onboarding_screen.dart';
import 'package:memo_app/screens/wellcome/splash_screen.dart';
void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await SharedPrefController().initPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/splash_screen',
            routes: {
              '/splash_screen': (context) => const SplashScreen(),
              '/onboarding_screen': (context) => const OnboardingScreen(),
              '/register_option_screen': (context) => const RegisterOptionScreen(),
              '/login_screen': (context) => const LoginScreen(),
              '/forget_screen': (context) => const ForgetScreen(),
              '/mobile_forget_screen': (context) => const MobileForgetScreen(),
              '/email_forget_screen': (context) => const EmailForgetScreen(),
              '/new_password_screen': (context) => const NewPasswordScreen(),
              '/register_screen': (context) => const MainRegisterScreen(),
              '/register_data_screen': (context) => const RegisterDataScreen(),
              '/bn_screens': (context) => const BottomNavigationScreen(),
              '/add_account_screen': (context) => const AddAccountScreen(),
              '/add_game_screen': (context) => const AddGameScreen(),
              '/saved_screen': (context) => const SavedScreen(),
              '/liked_screen': (context) => const LikedScreen(),
              '/other_profile_screen': (context) => const OtherProfileScreen(),
              '/video_screen': (context) => const VideoScreen(),
              '/reel_screen': (context) => const ReelScreen(),
            },
          );
        });
  }
}
