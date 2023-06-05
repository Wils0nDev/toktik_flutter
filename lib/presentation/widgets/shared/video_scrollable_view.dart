import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;
  const VideoScrollableView({
    super.key,
    required this.videos
    });

  @override
  Widget build(BuildContext context) {
    //PageView: es un widget q nos permite hacer scroll a pantalla completa
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.amber),
        Container(color: Colors.deepPurple),
        Container(color: Colors.greenAccent),
        Container( color: Colors.brown,)

        


      ],
    );
  }
}