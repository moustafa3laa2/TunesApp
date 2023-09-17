import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/Tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tunes_item.dart';

class TunesScreen extends StatelessWidget {
   const TunesScreen({super.key});
  final List<TuneModel> itemsList = const [
    TuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tune'),
        centerTitle: true,
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children: [
          for(int i=0; i<itemsList.length; i++)
          TunesItem(items: itemsList[i]),
        ],
      )
    );
  }
}
