import 'package:e_commerce_app/core/constant/assets.dart';

class OnboardingScreenModel {
  final String title;
  final String description;
  final String image;
  OnboardingScreenModel({
    required this.description,
    required this.image,
    required this.title,
  });
}

final List<OnboardingScreenModel> onBoardingScreen = [
  OnboardingScreenModel(
    title: "Discover Amazing Products",
    description:
        "Explore thousands of products from different categories and find exactly what you need in seconds.",
    image: Assets.onboardingSceenFirst,
  ),
  OnboardingScreenModel(
    title: "Easy and Secure Shopping",
    description:
        "Add products to your cart, enjoy a smooth checkout process, and pay securely.",
    image: Assets.onboardingSceenSecond,
  ),
  OnboardingScreenModel(
    title: "Shop Your Favorites",
    description:
        "Browse trending products and discover amazing deals every day.",
    image: Assets.onboardingSceenThird,
  ),
];
