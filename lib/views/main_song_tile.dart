import 'package:flutter/material.dart';
import 'package:path/path.dart';

class MainSongTile extends StatelessWidget {
  final String songNumber;
  const MainSongTile({super.key, required this.songNumber});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(songNumber),
            duration: const Duration(milliseconds: 200),
          ),
        );
      },
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            color: int.parse(songNumber) % 2 == 0
                ? Colors.deepPurple
                : Colors.orange,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.snowing),
                      Text('subject : song $songNumber'),
                    ],
                  ),
                  Text('song Number : song $songNumber'),
                  Text('describe : song $songNumber'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
