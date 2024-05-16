import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {

  final List<Color> colors;

  const VideoBackground({
    super.key, 
    this.colors = const [
      Colors.transparent,
      Colors.black87 // color negro u 87% solido casi sin transparencia
    ]
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.8, 1.0]
          )
        ),
      )
    );
  }
}