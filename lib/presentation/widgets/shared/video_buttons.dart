import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tok_tik/config/helpers/human_formats.dart';
import 'package:tok_tik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, color: Colors.red, iconData: Icons.favorite),
        const SizedBox(height: 10,),
        const _CustomIconButton(value: 0, iconData: Icons.comment),
        const SizedBox(height: 10,),
        _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye),
        const SizedBox(height: 10,),
        // BounceInDown( // esto cae desde arriba
        // pubsepc instalar animate_do
        // info sobre animate_do
        // https://www.youtube.com/watch?v=48jIUnc1TQo&list=PLCKuOXG0bPi1E-uXVd4j2iLqkbTYaHARX&index=2&ab_channel=FernandoHerrera
        // https://www.youtube.com/watch?v=oreOdtQ124M&ab_channel=FernandoHerrera
        // https://www.youtube.com/watch?v=QLUI3Pxw1Z8&ab_channel=FernandoHerrera
        // https://www.youtube.com/watch?v=w698MRVTB2E&ab_channel=FernandoHerrera
        SpinPerfect( // esto gira 1 vez
        infinite: true, // esto gira todo el rato pero rapido
        duration: const Duration(seconds: 5), // esto hace que una vuelta sea en 5 segundos asi que gira mas lento
          child: const _CustomIconButton(value: 0, iconData: Icons.play_circle_outline)
        ),
      ],
    );
  }
}


class _CustomIconButton extends StatelessWidget {

  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({required this.value, required this.iconData, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(iconData, color: color, size: 30,)
        ),
        if(value > 0)
        Text(HumanFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}