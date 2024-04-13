import 'package:rammandir2/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:rammandir2/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:rammandir2/ui/views/home/home_view.dart';
import 'package:rammandir2/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:rammandir2/ui/views/rmhome/rmhome_view.dart';
import 'package:rammandir2/ui/views/rmbhajan/rmbhajan_view.dart';
import 'package:rammandir2/ui/views/play_audio/play_audio_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: RmhomeView),
    MaterialRoute(page: RmbhajanView),
    MaterialRoute(page: PlayAudioView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
