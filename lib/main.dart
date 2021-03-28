import 'package:flutter/material.dart';
import 'package:localization_2/pages/home_page.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('ko', 'KO'), Locale('ja', 'JA')],
        path: 'assets/translations', // <-- change patch to your
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}

