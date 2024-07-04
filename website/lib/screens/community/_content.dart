import 'package:ofl_web/shared/framework/links.dart';

enum CommunityTab {
  people('People'),
  organizations('Organizations'),
  ;

  final String name;

  const CommunityTab(this.name);
}

const headerText = '''
# Community (at the forming stage)

This is list of people and organizations who use the concept of field.
''';

const tabText = {
  CommunityTab.people: '''
* [Elena Veselago](https://constellationintensive.com/elena-veselago/), director of Open Field Institute, e.veselago@gmail.com
* [Polina Cherkasova](http://polina-c.com), engineer, field practitioner, mom, [t.me](${AppLinks.telegram})
''',
  CommunityTab.organizations: '''
* [Open Field Institute](https://openfield.ru/)
* [Constellation Intensive](https://constellations.ru/)
''',
};
