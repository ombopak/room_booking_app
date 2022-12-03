import 'package:thengoding/data/model/onboarding/onboarding.dart';
import 'package:thengoding/data/src/img_string.dart';

class OnboardingState {
  final List<Onboarding> onboardingList = [
    Onboarding(
      title: 'Find a Roomie',
      description:
          'The Ngoding is a platform that provides a variety of programming learning materials for beginners to experts.',
      image: ImgString.cittaStanding,
    ),
    Onboarding(
      title: 'Your Roomate Finder',
      description:
          'Learn programming from beginner to expert with various programming languages.',
      image: ImgString.cittaStanding1,
    ),
    Onboarding(
      title: 'Find your match',
      description:
          'Learn design from beginner to expert with various design tools.',
      image: ImgString.cittaStanding2,
    ),
  ];

  int currentIndex = 0;

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
