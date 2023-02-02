import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Images {
  static Widget getIcon(String iconName,
      {Color? color, double? width, double? height}) {
    if (iconName.lastIndexOf('.') == -1) {
      return SvgPicture.asset('assets/icons/$iconName.svg',
          color: color, width: width, height: height);
    } else if (iconName.endsWith('.svg')) {
      return SvgPicture.asset('assets/icons/$iconName',
          color: color, width: width, height: height);
    } else {
      return Image.asset('assets/icons/$iconName',
          color: color, width: width, height: height);
    }
  }

  static Widget getImage(String name, {double? width, double? height}) {
    return Image.asset(
      "assets/images/$name.png",
      fit: BoxFit.fitWidth,
    );
  }
}
