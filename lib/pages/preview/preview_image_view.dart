import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 图片预览页面
class PreviewImageView extends StatelessWidget {
  const PreviewImageView(this.url, {super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox.expand(
        child: ExtendedImage.network(
          url,
          mode: ExtendedImageMode.gesture,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
