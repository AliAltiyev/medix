import 'package:flutter/gestures.dart';
import 'package:main/main.dart';
import 'package:main/ui/screen/focus.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({
    super.key,
  });

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: ApplicationColors.primaryColor,
      appBar: AppBar(
        backgroundColor: ApplicationColors.primaryColor,
        excludeHeaderSemantics: true,
        elevation: Dimensions.size_0,
        centerTitle: true,
        title: SizedBox(
          height: size.height / Dimensions.size_4,
          width: size.width / Dimensions.size_10,
          child: SvgPicture.asset(
            ImagePaths.primaryLogo,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.size_16,
          vertical: Dimensions.size_16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to Medix !',
              style: AppFonts.bold24.apply(
                color: ApplicationColors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Dimensions.size_8,
              ),
              child: Text(
                'How are you feeling today?',
                style: AppFonts.normal22.apply(
                  color: ApplicationColors.white700,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TabBar(
              unselectedLabelColor: ApplicationColors.disabledColor,
              indicatorPadding: const EdgeInsets.all(0),
              dragStartBehavior: DragStartBehavior.down,
              tabs: const [
                TabItem(
                  title: 'Calm',
                  imagePath: ImagePaths.calm,
                ),
                TabItem(
                  title: 'Relax',
                  imagePath: ImagePaths.relax,
                ),
                TabItem(
                  title: 'Focus',
                  imagePath: ImagePaths.focus,
                ),
                TabItem(
                  title: 'Anx',
                  imagePath: ImagePaths.calm,
                ),
              ],
              indicator: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: ApplicationColors.white,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              labelPadding: const EdgeInsets.fromLTRB(
                Dimensions.size_0,
                Dimensions.size_14,
                Dimensions.size_0,
                Dimensions.size_8,
              ),
              automaticIndicatorColorAdjustment: false,
              controller: _tabController,
            ),
            SizedBox(
              height: size.height / Dimensions.size_2,
              child: TabBarView(controller: _tabController, children: const [
                RelaxView(),
                RelaxView(),
                RelaxView(),
                RelaxView(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;
  final String imagePath;

  const TabItem({
    required this.title,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: Dimensions.size_62,
          width: Dimensions.size_50,
          decoration: const BoxDecoration(
            color: ApplicationColors.primaryWhite,
            borderRadius: BorderRadius.all(
              Radius.circular(
                Dimensions.size_16,
              ),
            ),
          ),
          child: SizedBox(
            height: Dimensions.size_10,
            width: Dimensions.size_10,
            child: SvgPicture.asset(
              imagePath,
              fit: BoxFit.none,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimensions.size_10,
          ),
          child: Text(
            title,
            style: AppFonts.bold12.apply(
              color: ApplicationColors.white,
            ),
          ),
        )
      ],
    );
  }
}
