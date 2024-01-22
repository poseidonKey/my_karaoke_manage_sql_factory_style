import 'package:flutter/material.dart';
import 'package:my_karaoke_manage/views/main_song_tile.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<MainSongTile> songs = List.generate(
    20,
    (index) => MainSongTile(
      songNumber: index.toString(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Like Songs'),
        ),
        body: ListView(
          children: songs,
        ));
  }
}
