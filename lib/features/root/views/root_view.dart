import 'package:doctorine/features/calendar/views/calendar_view.dart';
import 'package:doctorine/features/home/home_view.dart';
import 'package:doctorine/features/messages/views/messages_view.dart';
import 'package:doctorine/features/profile/views/profile_view.dart';
import 'package:doctorine/features/root/logic/root_cubit.dart';
import 'package:doctorine/features/root/views/widgets/root_screen_nav_bar.dart';
import 'package:doctorine/features/search/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  static const List<Widget> _screens = [
    HomeView(),
    MessagesView(),
    SearchView(),
    CalendarView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootCubit, int>(
      builder: (context, activeIndex) {
        return Scaffold(
          extendBody: true,
          body: IndexedStack(index: activeIndex, children: _screens),
          bottomNavigationBar: RootScreenNavBar(activeIndex: activeIndex),
        );
      },
    );
  }
}
