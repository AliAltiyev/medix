import 'package:main/main.dart';

class CalmView extends StatefulWidget {
  const CalmView({super.key});

  @override
  State<CalmView> createState() => _CalmViewState();
}

class _CalmViewState extends State<CalmView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Calm'),
      ),
    );
  }
}
