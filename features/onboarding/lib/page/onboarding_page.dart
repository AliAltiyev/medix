import 'package:onboarding/onboarding.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({
    super.key,
  });

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();
  final int _pageCount = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        image: ImagePaths.primaryBackgroundImage,
        child: Stack(
          children: <Widget>[
            PageView(
              clipBehavior: Clip.antiAlias,
              controller: _pageController,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              children: const <OnBoardingBody>[
                OnBoardingBody(pageContent: OnBoarding.first()),
                OnBoardingBody(pageContent: OnBoarding.second()),
                OnBoardingBody(pageContent: OnBoarding.third()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: Dimensions.size_40,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SmoothPageIndicator(
                  effect: const ScaleEffect(
                    strokeWidth: Dimensions.size_3,
                    dotWidth: Dimensions.size_6,
                    radius: Dimensions.size_10,
                    activeDotColor: ApplicationColors.primaryColor,
                    dotColor: ApplicationColors.white,
                  ),
                  controller: _pageController,
                  count: _pageCount,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
