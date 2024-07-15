import 'package:ofl_web/shared/bricks/text.dart';

import '../../shared/framework/app_structure.dart';

enum PracticesTab {
  methodologies(name: 'Methodologies', route: AppRoutes.practicesMethodologies),
  people(name: 'People', route: AppRoutes.practicesPeople),
  organizations(name: 'Organizations', route: AppRoutes.practicesOrgs),
  ;

  final String name;
  final String route;

  const PracticesTab({required this.name, required this.route});
}

final headerText = '''
# Practices (the list is forming)

This is the list of methodologies, people and organizations who rely their practices
or researches on
the concept of [the field](${AppMarkdown.redirect(AppRoutes.home)}).
''';

const tabText = {
  PracticesTab.methodologies: '''
## Field therapy

The therapist:

1. Provides their energy body to increase the client's capacity
to process traumatic energy streams.
2. Uses their attention to unblock movement in the traumatized
areas of client's energy body.

As result, the blocked traumatic energy streams, both personal and ancestral,
get processed and released.

## Family/Systematic/Organizational Constellations

Constellations work the same way as field therapy,
but in a group setting. The facilitator orchestrates energy bodies
and attention of the entire group to unblock and process the client's
traumatic energy streams.

More about constellations:

[bu ISCA](https://isca-network.org/systemic-constellations/what-is-a-constellation/)
[by Misba Shah](https://instituteofclinicalhypnosis.com/psychotherapy-coaching/systemic-family-constellation/)
[Mark Wolynn](https://www.eomega.org/article/rewire-your-life-force-with-family-constellations)

''',
  PracticesTab.people: '''
* [Elena Veselago](https://constellationintensive.com/elena-veselago/), director of Open Field Institute
* [Gaurav Deka](https://www.drgauravdeka.com/), systemic constellation facilitator, therapist
* [Polina Cherkasova](http://polina-c.com), engineer, field practitioner and researcher
* [Rupert Sheldrake](https://www.sheldrake.org/), biologist, author of the theory of morphic fields
* [Taya Shopen](https://www.facebook.com/taya.shopen), systemic constellation facilitator,
the author of [Earthybirth](https://earthybirth.com/) swaddling ceremony, the practitioner of image-emotions therapy
''',
  PracticesTab.organizations: '''
* [Constellation Intensive (in Russian)](https://constellations.ru/)
* [Convivium Constellations](https://www.conviviumconstellations.com/)
* [Family Constellations (Australia)](https://familyconstellations.com.au/)
* [Faust Family Constellations](https://www.faustfamilyconstellations.com/)
* [International Association for Systemic Constellations (ISCA)](https://isca-network.org)
* [Open Field Institute (in Russian)](https://openfield.ru/)
* [TERRAPIA, School of Transformation](https://terrapia.org/)
* [Urban Healers of LA](https://www.urbanhealersofla.com/)
''',
};
