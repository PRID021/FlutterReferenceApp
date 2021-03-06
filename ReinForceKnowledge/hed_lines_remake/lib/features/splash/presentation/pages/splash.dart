import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hed_lines_remake/configs/app_colors.dart';

import '../../../../common/widgets/app_bar_brighness_dark.dart';
import '../../../../configs/constants.dart';
import '../../../../core/utils/assets_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  Color backgroundColor = backgroundPrimaryColor;
  Color logoBackgroundColor = mCL;
  late AnimationController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBrighnessDark(),
      extendBodyBehindAppBar: true,
      body: AnimatedContainer(
        color: backgroundColor,
        duration: ANIMATION_DURATION_500_MS,
        child: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) => ClipPath(
              clipper: MyClip(_controller.value),
              child: SvgPicture.asset(
                AssetsHelper.logo,
                color: backgroundPrimaryColor,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(ANIMATION_DURATION_2000_MS, () {
      setState(() {
        var temp = backgroundPrimaryColor;
        backgroundColor = mCL;
        logoBackgroundColor = Colors.blue;
      });
    }).then((value) {
      _controller.forward();
    });

    _controller = AnimationController(
      value: 0.0,
      duration: Duration(seconds: 4),
      upperBound: 1,
      lowerBound: -1,
      vsync: this,
    );
  }
}

class MyClip extends CustomClipper<Path> {
  double move = 0;
  MyClip(this.move);
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - size.height * move);
    path.lineTo(0, size.height - size.height * move);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
