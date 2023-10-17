import 'package:core_ui/core_ui.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const AppButton({
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
            visualDensity: VisualDensity.comfortable,
            backgroundColor: MaterialStatePropertyAll(
              ApplicationColors.primaryColor,
            )),
        onPressed: onTap,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
