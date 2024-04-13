import 'package:flutter/material.dart';
import 'package:rammandir2/ui/views/play_audio/play_audio_view.dart';
import 'package:stacked/stacked.dart';

import 'rmbhajan_viewmodel.dart';

class RmbhajanView extends StackedView<RmbhajanViewModel> {
  const RmbhajanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RmbhajanViewModel viewModel,
    Widget? child,
  ) {
    return const PlayAudioView();
  }

  @override
  RmbhajanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RmbhajanViewModel();
}
