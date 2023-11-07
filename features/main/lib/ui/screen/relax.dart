import 'package:main/main.dart';

class RelaxView extends StatefulWidget {
  const RelaxView({super.key});

  @override
  State<RelaxView> createState() => _RelaxViewState();
}

class _RelaxViewState extends State<RelaxView> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimensions.size_16,
      ),
      child: Scaffold(
        backgroundColor: ApplicationColors.primaryColor,
        body: ListView(
          children: const <Widget>[
            ApplicationCard(
              imagePath: ImagePaths.onBoardingImage1,
              subtitle: 'Meditation 101',
              title: 'Relax with you body',
            ),
            ApplicationCard(
              imagePath: ImagePaths.onBoardingImage2,
              subtitle: 'Meditation 201',
              title: 'Deeply sleeping tool',
            ),
          ],
        ),
      ),
    );
  }
}

class ApplicationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const ApplicationCard({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: ApplicationColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              16,
            ),
          ),
        ),
        width: size.width,
        height: size.height / Dimensions.size_4,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: AppFonts.normal24.apply(
                      color: ApplicationColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: size.width / Dimensions.size_3,
                    child: Text(
                      subtitle,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  AppButton(
                    text: 'Listen now',
                    onTap: () {
                      //TODO: add click
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: LottieBuilder.asset(
                  imagePath,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
