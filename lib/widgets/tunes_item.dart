import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/Tune_model.dart';

class TunesItem extends StatelessWidget {
  const TunesItem({super.key, required this.items});
  final TuneModel items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          final player = AudioPlayer();
          player.play(
            AssetSource(items.sound),
          );
        },
        child: Container(
          color: items.color,
          // height: MediaQuery.of(context).size.height * 0.1278,
          width: double.infinity,
        ),
      ),
    );
  }
}
