import 'package:core_ui/core_ui.dart';

class AppTab extends StatelessWidget {
  final String title;
  final String iconPath;

  const AppTab({
    required this.title,
    required this.iconPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: title,
      icon: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(
            Dimensions.size_10,
          )),
          color: ApplicationColors.primaryWhite,
        ),
        height: Dimensions.size_40,
        width: Dimensions.size_40,
        child: Padding(
          padding: const EdgeInsets.all(
            Dimensions.size_8,
          ),
          child: SvgPicture.asset(
            iconPath,
          ),
        ),
      ),
    );
  }
}
