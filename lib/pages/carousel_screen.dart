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
    return Stack(
      children: [
        PageView(
          controller: controller,
          scrollDirection: direction,
          children: [
            for(var screen in screens)
              screen,
          ],
        ),
        Container(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.fromLTRB(0, 0, 150, 50),
          child: FloatingActionButton(child: const Icon(Icons.thumb_down),onPressed: () {}),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.fromLTRB(150, 0, 0, 50),
          child: FloatingActionButton(child: const Icon(Icons.thumb_up),onPressed: () {}),
        ),
      ],
    );
  }
}
