import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';

class OnboardingModel {
  final Image img;
  final String title;
  final String? body;

  OnboardingModel({required this.img, required this.title, this.body});
}

List<OnboardingModel> onboardingScreens = [
  OnboardingModel(
    img: Assets.images.onboarding.frame3.image(),
    title: "Welcome To Islami App",
  ),
  OnboardingModel(
    img: Assets.images.onboarding.onboarding2.image(),
    title: "Welcome To Islami App",
    body: "We Are Very Excited To Have You In Our Community",
  ),
  OnboardingModel(
    img: Assets.images.onboarding.frame31.image(),
    title: "Reading the Quran",
    body: "Read, and your Lord is the Most Generous",
  ),
  OnboardingModel(
    img: Assets.images.onboarding.frame32.image(),
    title: "Bearish",
    body: "Praise the name of your Lord, the Most High",
  ),
  OnboardingModel(
    img: Assets.images.onboarding.frame33.image(),
    title: "Holy Quran Radio",
    body: "You can listen to the Holy Quran Radio through the application for free and easily",
  ),
];