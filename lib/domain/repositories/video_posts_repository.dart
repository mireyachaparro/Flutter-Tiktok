import 'package:tok_tik/domain/entities/video_post.dart';

abstract class VideoPostRepository{ // abstract porque no quiero que se creen instancias de esta clase, las clases que implementen esta clase van a ser datasources o origenes de datos permitidos

  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavouriteVideosByUser(String userID);

}