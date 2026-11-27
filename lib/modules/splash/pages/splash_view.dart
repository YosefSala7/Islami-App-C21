import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/utils/shared_pref_storge_utils.dart';
import 'package:islami_app_c21/modules/layout/pages/layout_view.dart';
import 'package:islami_app_c21/modules/onboarding/screens/onboarding_screen.dart';

class SplashView extends StatefulWidget {
  static const String routeName = '/splash';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    /// 1- push
    /// 2- pushReplacement
    /// 3- pushAndRemoveUntil
    /// 4- pop

  _navigate();
  }
    Future<void> _navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    final bool isFirst = await SharedPrefStorgeUtils.getBool("isFirst");
    if (!mounted) return;
    Navigator.pushReplacementNamed(
      context,
      isFirst ? OnboardingScreen.onboardingRoute : LayoutView.routeName,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Assets.images.splashLogo.svg()));
  }
}
