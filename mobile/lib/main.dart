import 'package:flutter/material.dart';
import 'package:mobile/responsive/mobile_screen_layout.dart';
import 'package:mobile/responsive/responsive_layout_screen.dart';
import 'package:mobile/responsive/web_screen_llayout.dart';
import 'package:mobile/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram CLone',
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: ResponsiveLayout(
            webScreenLayout: WebScreenLayout(),
            mobileScreenLayout: MobileScreenLayout()));
  }
}
