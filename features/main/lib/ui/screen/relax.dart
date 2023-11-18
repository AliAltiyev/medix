import 'package:main/bloc/main_bloc.dart';
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
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          if (state is MainLoaded) {
            final List<Sound> items = state.relaxList;
            return Scaffold(
              backgroundColor: ApplicationColors.primaryColor,
              body: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ApplicationCard(
                    title: items[index].title,
                    subtitle: items[index].subtitle,
                    imagePath: items[index].image,
                  );
                },
              ),
            );
          } else {
            return const Scaffold();
          }
        },
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width / Dimensions.size_2,
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.normal24.apply(
                        color: ApplicationColors.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / Dimensions.size_3,
                    child: Text(
                      subtitle,
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
              ))
            ],
          ),
        ),
      ),
    );
  }
}
