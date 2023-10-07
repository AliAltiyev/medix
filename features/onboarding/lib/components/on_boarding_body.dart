import 'package:core_ui/resources/app_constants.dart';
import 'package:onboarding/onboarding.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    required this.pageContent,
    super.key,
  });

  final OnBoarding pageContent;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Lottie.asset(
          pageContent.imagePath,
          height: size.height / Dimensions.size_3,
        ),
        const SizedBox(
          height: Dimensions.size_20,
        ),
        Padding(
          padding: const EdgeInsets.all(
            ApplicationPadding.padding_20,
          ).copyWith(
            bottom: Dimensions.size_0,
          ),
          child: Column(
            children: <Widget>[
              Text(
                pageContent.title,
                textAlign: TextAlign.center,
                style: AppFonts.normal24.apply(
                  color: ApplicationColors.white,
                ),
              ),
              const SizedBox(height: Dimensions.size_20),
              Text(
                pageContent.description,
                textAlign: TextAlign.center,
                style: AppFonts.normal14.apply(
                  color: ApplicationColors.white,
                ),
              ),
              SizedBox(
                height: size.height * Dimensions.size_0_1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.size_50,
                    vertical: Dimensions.size_18,
                  ),
                  backgroundColor: ApplicationColors.primaryColor,
                  foregroundColor: ApplicationColors.white,
                ),
                onPressed: () async {
                  //TODO add nevigation to home or auth
                },
                child: Text(
                  AppConstants.getStarted,
                  style: AppFonts.normal24.apply(
                    color: ApplicationColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
