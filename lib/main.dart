import 'package:flutter/material.dart';

import 'youtube_player_iframe/youtube_iframe_page.dart';
// import 'pod_player/pod_player_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Youtube Player Demo',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      // home: const PodPlayerPage(),
      home: const YoutubeIframePage(),
    );
  }
}
