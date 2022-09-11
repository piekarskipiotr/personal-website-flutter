import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website_flutter/data/social_type.dart';
import 'package:personal_website_flutter/resources/colors/app_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:js' as js;

class SocialItem extends StatefulWidget {
  final SocialType socialType;

  const SocialItem({Key? key, required this.socialType}) : super(key: key);

  @override
  State<SocialItem> createState() => _SocialItemState();
}

class _SocialItemState extends State<SocialItem> {
  late SocialType _socialType;
  bool _isHover = false;

  @override
  void initState() {
    _socialType = widget.socialType;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: _isHover ? AppColors.containerBlack : Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(14.0),
        ),
      ),
      child: InkWell(
        onTap: () => js.context.callMethod('open', [_socialType.link]),
        onHover: (value) => setState(() => _isHover = value),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              _socialType.icon,
              color: _socialType.color,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              _socialType.name,
              style: GoogleFonts.lato(
                fontSize: 24.0,
                color: AppColors.creamWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
