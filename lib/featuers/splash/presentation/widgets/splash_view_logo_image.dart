import 'package:books_app/constraints.dart';
import 'package:flutter/material.dart';

class SplashViewLogoImage extends StatelessWidget {
  const SplashViewLogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(kImageLogo),
      height: MediaQuery.of(context).size.height * 50/812,
      width: MediaQuery.of(context).size.width * 233/375,
    );
  }
}