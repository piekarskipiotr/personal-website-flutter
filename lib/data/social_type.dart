import 'package:flutter/material.dart';

enum SocialType {
  twitter,
  linkedin,
  github
}

extension SocialTypeExt on SocialType {
  String get name {
    switch (this) {
      case SocialType.twitter: return 'Twitter';
      case SocialType.linkedin: return 'Linkedin';
      case SocialType.github: return 'Github';
    }
  }

  String get icon {
    switch (this) {
      case SocialType.twitter: return 'twitter.svg';
      case SocialType.linkedin: return 'linkedin.svg';
      case SocialType.github: return 'github.svg';
    }
  }

  String get link {
    switch (this) {
      case SocialType.twitter: return 'https://twitter.com/xazai_';
      case SocialType.linkedin: return 'https://www.linkedin.com/in/piekarskipiotr';
      case SocialType.github: return 'https://github.com/piekarskipiotr';
    }
  }
  
  Color get color {
    switch (this) {
      case SocialType.twitter: return const Color(0xFF1DA1F2);
      case SocialType.linkedin: return const Color(0xFF0A66C2);
      case SocialType.github: return const Color(0xFFE2DCD5);
    }
  }
}