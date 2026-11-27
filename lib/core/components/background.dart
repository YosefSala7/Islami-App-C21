
import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';

class Background extends StatelessWidget {
  Background({super.key, required this.img,required this.child});
  Image img;
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        img,
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: .bottomCenter,
              end: .topCenter,
              colors: [AppColors.darkBlack, AppColors.darkBlack.withAlpha(180)],
            ),
          ),
        ),
        child
      ],
    );
  }
}
