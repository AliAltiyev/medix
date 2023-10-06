import 'package:core_ui/core_ui.dart';
import 'package:core_ui/resources/app_constants.dart';
import 'package:domain/domain.dart';

final class OnBoarding extends Equatable {
  final String title;
  final String description;
  final String imagePath;

  const OnBoarding({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  const OnBoarding.first()
      : this(
          title: AppConstants.onBoardingTitle1,
          description: AppConstants.onBoardingSubtitle1,
          imagePath: ImagePaths.onBoardingImage1,
        );

  const OnBoarding.second()
      : this(
          title: AppConstants.onBoardingTitle2,
          description: AppConstants.onBoardingSubtitle2,
          imagePath: ImagePaths.onBoardingImage2,
        );

  const OnBoarding.third()
      : this(
          title: AppConstants.onBoardingTitle3,
          description: AppConstants.onBoardingSubtitle3,
          imagePath: ImagePaths.onBoardingImage3,
        );

  @override
  List<Object?> get props => <String>[
        title,
        description,
        imagePath,
      ];
}
