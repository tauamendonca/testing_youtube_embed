import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';

class PodPlayer extends StatefulWidget {
  const PodPlayer({Key? key}) : super(key: key);

  @override
  State<PodPlayer> createState() => _PodPlayerState();
}

class _PodPlayerState extends State<PodPlayer> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube('https://youtu.be/PuXGD-t7qz4'),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PodVideoPlayer(controller: controller);
  }
}
