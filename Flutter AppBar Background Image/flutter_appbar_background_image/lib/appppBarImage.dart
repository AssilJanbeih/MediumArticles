
// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_appbar_background_image/shared/constants/textStyle.dart';

class AppBarImageExample extends StatefulWidget {
  const AppBarImageExample({super.key});

  @override
  State<AppBarImageExample> createState() => _AppBarImageExampleState();
}

class _AppBarImageExampleState extends State<AppBarImageExample> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lebanese \nRestaurants',
          style: kBoldTtitleAppBar,
          textAlign: TextAlign.center,
        ),
        toolbarHeight: screenHeight * 0.3,
        flexibleSpace: Stack(
          children: [
            Image.asset(
              "assets/lebanese-food.jpeg",
              height: screenHeight * 0.4,
              fit: BoxFit.cover,
            ),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(),
);
}
}