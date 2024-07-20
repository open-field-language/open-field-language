import 'package:flutter/material.dart';
import 'package:ofl_web/screens/practices/_practices.dart';
import 'package:ofl_web/shared/framework/app_structure.dart';
import '../../shared/bricks/fab.dart';
import '../../shared/bricks/layout.dart';

import '../../shared/bricks/tab_bar.dart';
import '../../shared/bricks/text.dart';
import '../../shared/design/theme.dart';
import '../../shared/framework/screen.dart';

final practicesMethodologiesScreen =
    AppScreen((_) => const _Screen(PracticesTabs.methodologies));
final practicesScreen = AppScreen((_) => const _Screen(PracticesTabs.people));
final practicesOrgsScreen =
    AppScreen((_) => const _Screen(PracticesTabs.organizations));

class _Screen extends StatefulWidget {
  const _Screen(this.tab);

  final PracticesTabs tab;

  @override
  State<_Screen> createState() => _ScreenState();
}

class _ScreenState extends State<_Screen> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: PracticesTabs.values.length, vsync: this);
    _controller.index = PracticesTabs.values.indexOf(widget.tab);
  }

  @override
  Widget build(BuildContext context) {
    final tab = PracticesTabs.values[_controller.index];

    return AppColumn(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppMarkdown('$headerText'),
          Fab(
            callback: () => push(AppRoutes.participate, context),
            label: 'Add a Practice',
          ),
          SizedBox(height: 20),
          AppTabBar(
            indicatorColor: AppColors.tabSecondary,
            controller: _controller,
            onTap: (value) {
              final tab = PracticesTabs.values[value];
              push(tab.route, context);
            },
            tabs: PracticesTabs.values.map((t) => Tab(text: t.name)).toList(),
          ),
          tab.builder(context),
        ],
      ),
    );
  }
}
