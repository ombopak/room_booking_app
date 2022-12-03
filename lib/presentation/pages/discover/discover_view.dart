import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/presentation/pages/discover/component/bottom_menu.dart';
import 'package:thengoding/presentation/pages/discover/discover_state.dart';
import 'package:thengoding/presentation/pages/discover/favorite/favorite_view.dart';
import 'package:thengoding/presentation/pages/discover/setting/setting_view.dart';
import 'package:thengoding/presentation/pages/discover/trips/trips_view.dart';

import 'discover_cubit.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DiscoverCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.ink05,
      body: Column(children: [
        Expanded(child: BlocBuilder<DiscoverCubit, DiscoverState>(
          builder: (context, state) {
            return state.selectedIndex == 0
                ? TripsPage()
                : state.selectedIndex == 1
                    ? FavoritePage()
                    : SettingPage();
          },
        )),
        BlocBuilder<DiscoverCubit, DiscoverState>(
          builder: (context, state) {
            return BottomMenu();
          },
        ),
      ]),
    );
  }
}
