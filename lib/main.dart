import 'package:flutter/material.dart';
import 'package:untitled17/screens/welcom_screen.dart';
import 'core/services/services.dart';
import 'helper_with_dio/cash_helper.dart';
import 'helper_with_dio/dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  DioHelper.init();
  await CashHelper.init();
  initialServices();
  // CashHelper.putUser(userToken: "");
  //CashHelper.putUserTheme(theme: "light");
  //CashHelper.putUserLanguage(language: "en");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WelcomeScreen(),
      ),
    );
  }
}
