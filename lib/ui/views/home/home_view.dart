import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rammandir2/ui/views/rmbhajan/rmbhajan_view.dart';
import 'package:rammandir2/ui/views/rmhome/rmhome_view.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);
  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        // return Container(
        //   padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        //   child: Text('Community'),
        //   //child:
        // );
        return const RmhomeView();
      // case 1:
      //   // return Container(
      //   //   padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      //   //   child: Text('Reports'),
      //   // );
      //   return ReportsView();
      case 1:
        return const RmbhajanView();
      // case 3:
      //   return AccountView();
    }
    return Container();
  }

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: getViewForIndex(viewModel.currentIndex),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: const Color(0XFFF5F5F5),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: Container(
            color: Colors.white,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            viewModel.setIndex(0);
                          },
                          color: viewModel.currentIndex == 0
                              ? Colors.red
                              : Colors.black,
                          icon: const Icon(
                            Icons.home_outlined,
                          )),
                      Text(
                        'Home',
                        style: GoogleFonts.aBeeZee(
                          color: viewModel.currentIndex == 0
                              ? Colors.red
                              : Colors.black,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () async {
                            viewModel.setIndex(1);
                          },
                          color: viewModel.currentIndex == 1
                              ? Colors.red
                              : Colors.black,
                          icon: const Icon(
                            Icons.music_note,
                          )),
                      Text(
                        'Music',
                        style: GoogleFonts.aBeeZee(
                            color: viewModel.currentIndex == 1
                                ? Colors.red
                                : Colors.black,
                            fontSize: 13),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
