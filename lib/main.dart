import 'package:flutter/material.dart';
import 'package:personal_website_flutter/pages/profile_social_links_page.dart';
import 'package:personal_website_flutter/resources/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piotr Piekarski',
      debugShowCheckedModeBanner: false,

      home: const ProfileSocialLinksPage(),

      themeMode: ThemeMode.dark,
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
