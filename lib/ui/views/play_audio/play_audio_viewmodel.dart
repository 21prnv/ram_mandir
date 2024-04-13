import 'package:stacked/stacked.dart';
import 'package:just_audio/just_audio.dart';

class PlayAudioViewModel extends BaseViewModel {
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  final List<AudioPlayer> players = List.generate(8, (index) => AudioPlayer());

  playPauseAudio(int index) async {
    final AudioPlayer player = players[index];
    await player.setUrl(_getAssetUrl(index));
    duration = player.duration!;
    position = player.position;
    try {
      if (player.playing) {
        await player.pause();
      } else {
        await player.play();
      }
    } catch (e) {
      print('Error playing audio: $e');
    }
    notifyListeners();
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
  }

  String _getAssetUrl(int index) {
    // Modify this function to return the correct asset URL for each song
    switch (index) {
      case 0:
        return 'asset:///assets/Aise-Hain-Mere-Ram.mp3';
      case 1:
        return 'asset:///assets/Kise-Ke-Baap-Ki-Nahi-Ayodhya.mp3';
      case 2:
        return 'asset:///assets/Mere-Man-Ram-Hi-Rate-Re.mp3';
      case 3:
        return 'asset:///assets/Ram-Bane-Hain.mp3';
      case 4:
        return 'asset:///assets/Ram-Mere-Ghar-Aana.mp3';
      case 5:
        return 'asset:///assets/Ram-Ramaiya-Gaye-Ja.mp3';
      case 6:
        return 'asset:///assets/shri-ram-arti.mp3';
      case 7:
        return 'asset:///assets/Ram-Ka-Naam-Lekar-Jo-Mar-Jayenge.mp3';
      default:
        return '';
    }
  }
}
