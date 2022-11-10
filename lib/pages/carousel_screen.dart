import 'package:flutter/material.dart';

class CarouselScreen extends StatelessWidget {
  final List<Widget> screens;
  final Axis direction;
  const CarouselScreen({Key? key, this.screens = const [], this.direction = Axis.horizontal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: 0,
    );
    return PageView(
      controller: controller,
      scrollDirection: direction,
      children: [
        for(var screen in screens)
          screen,
      ],
    );
  }
}
