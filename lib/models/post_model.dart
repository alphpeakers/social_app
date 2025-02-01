import 'package:video_player/video_player.dart';

class PostModel {
  final String? imagePath;
  final String? videoPath;
  VideoPlayerController? videoController;

  PostModel({this.imagePath, this.videoPath, this.videoController});
}
