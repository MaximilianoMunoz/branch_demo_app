import 'package:branch_app_demo/utils/common_methods.dart';
import 'package:branch_app_demo/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterBranchSdk.init(
    useTestKey: true,
    enableLogging: false,
    disableTracking: false,
  );
  runApp(const FlutterDeepLink());
}

class FlutterDeepLink extends StatelessWidget {
  const FlutterDeepLink({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        }),
      ),
      home: navigateToNextScreen(),
    );
  }
}
