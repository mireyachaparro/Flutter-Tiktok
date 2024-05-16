import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/presentation/widgets/shared/video_buttons.dart';
import 'package:tok_tik/presentation/widgets/video/full_screen_player.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder( // pageView permite scroll a pantalla completa 
      physics: const BouncingScrollPhysics(), // si vas a la posicion 0 o despues de la ultima, hace un rebote en gris
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index){
        final videoPost = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoURL: videoPost.videoUrl,
              )
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
            ),
          ],  
        );
      }
    ); 
  }
}