import 'package:flutter/material.dart';
import 'package:ofl_web/screens/community/_content.dart';
import 'package:ofl_web/shared/framework/app_structure.dart';
import '../../shared/bricks/fab.dart';
import '../../shared/bricks/layout.dart';

import '../../shared/bricks/tab_bar.dart';
import '../../shared/bricks/text.dart';
import '../../shared/design/theme.dart';
import '../../shared/framework/screen.dart';

final communityScreen = AppScreen((_) => const _Screen());

class _Screen extends StatefulWidget {
  const _Screen();

  @override
  State<_Screen> createState() => _ScreenState();
}

class _ScreenState extends State<_Screen> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: CommunityTab.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppMarkdown('$headerText'),
          Fab(
            callback: () => push(AppRoutes.participate, context),
            label: 'Join',
          ),
          SizedBox(height: 20),
          AppTabBar(
            indicatorColor: AppColors.tabSecondary,
            controller: _controller,
            onTap: (value) => setState(() {}),
            tabs: CommunityTab.values.map((t) => Tab(text: t.name)).toList(),
          ),
          AppMarkdown(tabText[CommunityTab.values[_controller.index]]!),
        ],
      ),
    );
  }
}
