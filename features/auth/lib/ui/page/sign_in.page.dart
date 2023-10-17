import 'package:navigation/navigation.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final TextEditingController _emailTextEditingContoller =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final TextEditingController _nameTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        image: ImagePaths.authBackground,
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.size_16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SvgPicture.asset(
                ImagePaths.primaryLogo,
                alignment: Alignment.topLeft,
                width: Dimensions.size_50,
                height: Dimensions.size_50,
              ),
              const Spacer(),
              Text(
                'Sign In',
                style: AppFonts.bold30.apply(
                  color: ApplicationColors.white,
                ),
              ),
              Text(
                'Sign up now for free and start meditating, and explore Medix.',
                style: AppFonts.normal22.apply(
                  color: ApplicationColors.white700,
                ),
              ),
              const Spacer(),
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextField(
                    hintText: 'Email',
                    hintStyle: AppFonts.bold12.apply(
                      color: ApplicationColors.white,
                    ),
                    controller: _nameTextEditingController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextField(
                    hintText: 'Password',
                    hintStyle: AppFonts.bold12.apply(
                      color: ApplicationColors.white,
                    ),
                    controller: _nameTextEditingController,
                  ),
                ],
              ),
              const Spacer(),
              AppButton(
                onTap: () {},
                text: 'SIGN IN',
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  //TODO Add navigation to sign up page
                },
                child: Align(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                            text: "Don't have an account? ",
                            style: AppFonts.normal14),
                        TextSpan(
                            text: 'Sign Up ',
                            style: AppFonts.bold14
                                .apply(color: ApplicationColors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
