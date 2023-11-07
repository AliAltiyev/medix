import 'package:core_ui/core_ui.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  final Widget? icon;

  const AppButton({
    required this.text,
    required this.onTap,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width / Dimensions.size_3,
      height: size.height / Dimensions.size_16,
      child: ElevatedButton(
          style: const ButtonStyle(
              visualDensity: VisualDensity.comfortable,
              backgroundColor: MaterialStatePropertyAll<Color?>(
                ApplicationColors.primaryColor,
              )),
          onPressed: onTap,
          child: icon == null
              ? Row(
                  children: <Widget>[
                    Text(
                      text,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              : Row(
                  children: <Widget>[
                    Text(text),
                    Expanded(child: icon ?? const SizedBox.shrink()),
                  ],
                )),
    );
  }
}
