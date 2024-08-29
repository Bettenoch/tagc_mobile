import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tagc_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:tagc_app/utils/theme/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),  // Add this line

    );
  }
}

