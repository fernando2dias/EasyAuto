import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_auto/core/core.dart';
import 'package:flutter_easy_auto/interface/interface.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _disposeSplash();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.backgound,
          // gradient: AppGradients.linear,
        ),
        child: Center(
          child: SvgPicture.asset('assets/brand/brand_white.svg'),
          // SvgPicture.asset('brand/brand.svg'),
        ),
      ),
    );
  }

  Future<void> _disposeSplash() async {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3))
          .then((value) => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => InterfaceScreen(),
                ),
              ));
    });
  }
}
