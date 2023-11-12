
printf "navigation pub get\n"
cd navigation || exit
flutter clean && flutter clean cache && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs


printf "onboarding pub get\n"
cd features/onboarding || exit
flutter clean && flutter clean cache && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

printf "domain pub get\n"
cd domain || exit
flutter clean && flutter clean cache && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs