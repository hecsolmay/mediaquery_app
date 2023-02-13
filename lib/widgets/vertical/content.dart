import 'package:flutter/material.dart';
import 'package:mediaquery_app/widgets/vertical/vertical_content.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return VerticalContent(
        screenHeight: screenHeight, screenWidth: screenWidth);
  }
}
