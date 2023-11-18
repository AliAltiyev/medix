import 'package:core_ui/resources/app_constants.dart';
import 'package:main/bloc/main_bloc.dart';
import 'package:main/main.dart';

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
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => MainBloc(
        fetchRelaxSoundsUseCase: getIt<FetchRelaxSoundsUseCase>(),
      )..add(FetchRelaxSoundsEvent()),
      child: Scaffold(
        backgroundColor: ApplicationColors.primaryColor,
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: false,
                snap: true,
                floating: true,
                collapsedHeight: size.height / Dimensions.size_3,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(
                    Dimensions.size_16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: size.height / Dimensions.size_10),
                      Text(
                        'Welcome back, Test user!',
                        style: AppFonts.bold24.apply(
                          color: ApplicationColors.white,
                        ),
                      ),
                      Text(
                        'How are you feeling today?',
                        style: AppFonts.bold18.apply(
                          color: ApplicationColors.white700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: Dimensions.size_20,
                        ),
                        child: TabBar(
                          dividerColor: ApplicationColors.white800,
                          controller: _tabController,
                          indicatorColor: ApplicationColors.disabledColor,
                          tabs: const <Widget>[
                            AppTab(
                              title: AppConstants.calm,
                              iconPath: ImagePaths.calm,
                            ),
                            AppTab(
                              title: AppConstants.relax,
                              iconPath: ImagePaths.relax,
                            ),
                            AppTab(
                              title: AppConstants.focus,
                              iconPath: ImagePaths.focus,
                            ),
                            AppTab(
                              title: AppConstants.anxious,
                              iconPath: ImagePaths.anxious,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                elevation: Dimensions.size_0,
                centerTitle: true,
                backgroundColor: ApplicationColors.primaryColor,
                expandedHeight: size.height / Dimensions.size_4,
                title: SvgPicture.asset(
                  ImagePaths.primaryLogo,
                  height: Dimensions.size_30,
                  width: Dimensions.size_30,
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 600,
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          RelaxView(),
                          Text('Relax'),
                          Text('Relax'),
                          Text('Relax'),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
