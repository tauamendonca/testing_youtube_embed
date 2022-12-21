import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeIframePage extends StatefulWidget {
  const YoutubeIframePage({super.key});

  @override
  YoutubeIframePageState createState() => YoutubeIframePageState();
}

class YoutubeIframePageState extends State<YoutubeIframePage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(videoId: 'K18cpp_-gP8');
  }

  @override
  void dispose() {
    //pra dar dispose no video
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Youtube Iframe Player Flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 400),
              child: YoutubePlayer(
                controller: _controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
