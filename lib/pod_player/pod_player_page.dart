import 'package:flutter/material.dart';

import 'pod_player.dart';

class PodPlayerPage extends StatefulWidget {
  const PodPlayerPage({super.key});

  @override
  State<PodPlayerPage> createState() => _PodPlayerPageState();
}

class _PodPlayerPageState extends State<PodPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste Youtube'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Utilizando pod_player: ^0.1.0',
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 400),
              child: const PodPlayer(),
            ),
          ],
        ),
      ),
    );
  }
}
