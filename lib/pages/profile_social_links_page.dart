import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website_flutter/data/social_type.dart';
import 'package:personal_website_flutter/pages/social_item.dart';
import 'package:personal_website_flutter/resources/colors/app_colors.dart';

class ProfileSocialLinksPage extends StatefulWidget {
  const ProfileSocialLinksPage({Key? key}) : super(key: key);

  @override
  State<ProfileSocialLinksPage> createState() => _ProfileSocialLinksPageState();
}

class _ProfileSocialLinksPageState extends State<ProfileSocialLinksPage> {
  @override
  Widget build(BuildContext context) {
    var browserWidth = MediaQuery.of(context).size.width;
    var webView = browserWidth > 920;

    return Scaffold(
      body: webView
          ? Center(
              child: SizedBox(
                width: 920.0,
                height: 320.0,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 256.0,
                        height: 256.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              AppColors.green,
                              AppColors.orange,
                              AppColors.red,
                              AppColors.primary,
                            ]),
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/profile-pic.jpeg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 36.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Hey, I'm Piotr. ",
                                    style: GoogleFonts.lato(
                                      fontSize: 48.0,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.secondary,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "I'm a Flutter and Android Native Developer.",
                                    style: GoogleFonts.lato(
                                      fontSize: 48.0,
                                      color: AppColors.creamWhite,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24.0),
                            Row(
                              children: const [
                                SocialItem(socialType: SocialType.linkedin),
                                SizedBox(width: 24.0),
                                SocialItem(socialType: SocialType.twitter),
                                SizedBox(width: 24.0),
                                SocialItem(socialType: SocialType.github),
                                SizedBox(width: 24.0),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 36.0),
                    SizedBox(
                      width: 256.0,
                      height: 256.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                            AppColors.green,
                            AppColors.orange,
                            AppColors.red,
                            AppColors.primary,
                          ]),
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/profile-pic.jpeg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 36.0),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "Hey, I'm Piotr. ",
                            style: GoogleFonts.lato(
                              fontSize: 48.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondary,
                            ),
                          ),
                          TextSpan(
                            text: "I'm a Flutter and Android Native Developer.",
                            style: GoogleFonts.lato(
                              fontSize: 48.0,
                              color: AppColors.creamWhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 36.0),
                    const SocialItem(socialType: SocialType.linkedin),
                    const SizedBox(height: 24.0),
                    const SocialItem(socialType: SocialType.twitter),
                    const SizedBox(height: 24.0),
                    const SocialItem(socialType: SocialType.github),
                    const SizedBox(height: 24.0),
                  ],
                ),
              ),
            ),
    );
  }
}
