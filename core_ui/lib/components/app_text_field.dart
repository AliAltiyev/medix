import 'package:core_ui/core_ui.dart';
import 'package:core_ui/resources/app_constants.dart';

class AppTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool filled;
  final Color? fillColor;
  final bool obscureText;
  final bool readOnly;
  final Widget? suffixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool overrideValidator;
  final TextStyle? hintStyle;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final bool? isDescription;
//
  const AppTextField({
    required this.controller,
    this.isDescription,
    this.maxLines,
    this.textInputAction,
    this.filled = false,
    this.obscureText = false,
    this.readOnly = false,
    super.key,
    this.validator,
    this.fillColor,
    this.suffixIcon,
    this.hintText,
    this.keyboardType,
    this.hintStyle,
    this.overrideValidator = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: AppFonts.normal14.apply(
          color: ApplicationColors.white,
        ),
        autocorrect: true,
        cursorColor: ApplicationColors.white,
        maxLines: maxLines,
        controller: controller,
        validator: overrideValidator
            ? validator
            : (String? value) {
                if (value == null || value.isEmpty) {
                  return AppConstants.required;
                }
                return validator?.call(value);
              },
        keyboardType: keyboardType,
        obscureText: obscureText,
        readOnly: readOnly,
        decoration: isDescription == true
            ? InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    Dimensions.size_20,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    Dimensions.size_20,
                  ),
                  borderSide: const BorderSide(
                    color: ApplicationColors.disabledColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    Dimensions.size_20,
                  ),
                  borderSide: const BorderSide(
                    color: ApplicationColors.white,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.size_20,
                  vertical: Dimensions.size_20,
                ),
                filled: filled,
                fillColor: fillColor,
                suffixIcon: suffixIcon,
                hintText: hintText,
                hintStyle: hintStyle ?? AppFonts.normal16,
              )
            : InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      Dimensions.size_80,
                    ),
                    borderSide: const BorderSide(
                      color: ApplicationColors.disabledColor,
                    )),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    Dimensions.size_80,
                  ),
                  borderSide: const BorderSide(
                    color: ApplicationColors.disabledColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    Dimensions.size_80,
                  ),
                  borderSide: const BorderSide(
                    color: ApplicationColors.primaryColor,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.size_20,
                ),
                filled: filled,
                fillColor: fillColor,
                suffixIcon: suffixIcon,
                hintText: hintText,
                hintStyle: hintStyle ?? AppFonts.normal16,
              ));
  }
}
