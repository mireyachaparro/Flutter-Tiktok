import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier{

  final VideoPostRepository videosRepository;
  
  bool initialLoading = true;
  List<VideoPost> videosList = [];

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async{

    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts.map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()).toList();

    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videosList.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}