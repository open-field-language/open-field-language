import 'package:ofl_web/shared/framework/links.dart';

enum CommunityTab {
  people('People'),
  organizations('Organizations'),
  ;

  final String name;

  const CommunityTab(this.name);
}

const headerText = '''
# Community

This is list of people and organizations, who
use the concept of the field in their personal and professional life.
''';

const tabText = {
  CommunityTab.people: '''
* [Polina Cherkasova](http://happy-creek.com/#/team), engineer, field practitioner, mom, [t.me](${AppLinks.telegram})
''',
  CommunityTab.organizations: '''
There is no organizations yet.
''',
};
