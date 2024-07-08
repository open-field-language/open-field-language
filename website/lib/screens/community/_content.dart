import 'package:ofl_web/shared/bricks/text.dart';
import 'package:ofl_web/shared/framework/links.dart';

import '../../shared/framework/app_structure.dart';

enum CommunityTab {
  people(name: 'People', route: AppRoutes.practices),
  organizations(name: 'Organizations', route: AppRoutes.practicesOrgs),
  ;

  final String name;
  final String route;

  const CommunityTab({required this.name, required this.route});
}

final headerText = '''
# Community (at the forming stage)

This is list of people and organizations who build practices on top of
the concept of [the field](${AppMarkdown.redirect(AppRoutes.home)}).
''';

const tabText = {
  CommunityTab.people: '''
* [Elena Veselago](https://constellationintensive.com/elena-veselago/), director of Open Field Institute, e.veselago@gmail.com
* [Polina Cherkasova](http://polina-c.com), engineer, field practitioner, mom, [t.me](${AppLinks.telegram})
''',
  CommunityTab.organizations: '''
* [Constellation Intensive (Russian)](https://constellations.ru/)
* [Open Field Institute (Russian)](https://openfield.ru/)
* [TERRAPIA, School of Transformation (English)](https://terrapia.org/)
''',
};
