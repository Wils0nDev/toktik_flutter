import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch<DiscoverProvider>();
    
    return  Scaffold(
      //CircularProgressIndicator : es un loading
      //strokeWidth : es el  ancho del loading
      body: discoverProvider.initialLoadin 
            ? const Center(child: CircularProgressIndicator(strokeWidth: 2),)
            :  VideoScrollableView(videos: discoverProvider.videos)

    );

  }
}