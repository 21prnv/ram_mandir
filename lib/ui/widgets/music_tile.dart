import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rammandir2/ui/views/play_audio/play_audio_view.dart';
import 'package:rammandir2/ui/views/play_audio/play_audio_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MusicTile extends StatelessWidget {
  final int index;
  const MusicTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> songNames = [
      ' Aise Hain Mere Ram',
      'Kise Ke Baap Ki Nahi Ayodhya',
      'Mere Man Ram Hi Rate Re',
      'Ram Bane Hain',
      'Ram Mere Ghar Aana',
      'Ram Ramaiya Gaye Ja',
      'Shri Ram Arti',
      'Ram Ka Naam Lekar Jo Mar Jayenge'
    ];

    return ViewModelBuilder<PlayAudioViewModel>.reactive(
      viewModelBuilder: () => PlayAudioViewModel(),
      builder: (context, viewModel, child) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: ListTile(
          title: Text(songNames[index], style: GoogleFonts.josefinSans()),
          leading: StreamBuilder(
            stream: viewModel.players[index].playingStream,
            builder: (context, snapshot) {
              return CircleAvatar(
                backgroundColor: Colors.red,
                radius: 40,
                child: IconButton(
                  onPressed: () => viewModel.playPauseAudio(index),
                  icon: Icon(
                    viewModel.players[index].playing
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
