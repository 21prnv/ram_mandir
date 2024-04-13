import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rammandir2/ui/common/ui_helpers.dart';
import 'package:rammandir2/ui/widgets/music_tile.dart';
import 'package:stacked/stacked.dart';

import 'play_audio_viewmodel.dart';

class PlayAudioView extends StackedView<PlayAudioViewModel> {
  const PlayAudioView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PlayAudioViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(125, 244, 195, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 196, 48),
        title: Text(
          'जय श्री राम',
          style: GoogleFonts.yatraOne(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 3.0,
        ),
        child: Center(
          child: Column(
            children: [
              // Play/Pause button
              verticalSpaceSmall,
              Text(
                'Famous Sangits:',
                style: GoogleFonts.josefinSans(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.players.length,
                  itemBuilder: (context, index) {
                    return MusicTile(index: index);
                  },
                ),
              )
              // Seek bar (optional)
              // ...add seek bar implementation
            ],
          ),
        ),
      ),
    );
  }

  @override
  PlayAudioViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayAudioViewModel();
}
