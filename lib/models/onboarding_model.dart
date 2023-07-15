import 'package:task3/core/utils/assets.dart';

class OnBoardingModel {
  late String title;
  late String subTitle;
  late String coloredWord;
  late String image;

  OnBoardingModel({
    required this.title,
    required this.subTitle,
    required this.coloredWord,
    required this.image,
  });
}

List<OnBoardingModel> onBoarding = [
  OnBoardingModel(
      title: 'can make a big difference in your dentire day choose wisely.',
      subTitle:
          'Wakey is based on your behavioral psychology and Artificial intelligence.',
      coloredWord: 'Morning habit ',
      image: AppAssets.onBoarding1),
  OnBoardingModel(
      title: 'Healthy morning routine makes people Active and Successful.',
      subTitle:
          'Wakey helps to achieve your goals by making you wake and active.',
      coloredWord: 'As per research ',
      image: AppAssets.onBoarding2),
  OnBoardingModel(
      title:
          ' setup your goal get motivated and achieve all you success you deserve.',
      subTitle: 'hope to take the courage to pursue your dreams.',
      coloredWord: 'healthy life ',
      image: AppAssets.onBoarding3)
];
