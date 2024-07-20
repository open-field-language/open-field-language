import 'package:flutter/widgets.dart';
import 'package:ofl_web/shared/bricks/text.dart';

import '../../shared/framework/app_structure.dart';
import '_people.dart';

enum PracticesTabs {
  methodologies(
    'Methodologies',
    AppRoutes.practicesMethodologies,
    _methodologies,
  ),
  people(
    'Practitioners',
    AppRoutes.practicesPeople,
    _people,
  ),
  organizations(
    'Organizations',
    AppRoutes.practicesOrgs,
    _organizations,
  ),
  ;

  final String name;
  final String route;
  final WidgetBuilder builder;

  const PracticesTabs(this.name, this.route, this.builder);
}

final headerText = '''
# Field-Aware Practices (the list is forming)

This is the list of methodologies, practitioners and organizations, which
rely on the concept of [the field](${AppMarkdown.redirect(AppRoutes.home)}),
aiming to heal by releasing blocked energy streams.
''';

Widget _people(BuildContext context) {
  return People();
}

Widget _organizations(BuildContext context) => AppMarkdown('''
* [Constellation Intensive (in Russian)](https://constellations.ru/)
* [Convivium Constellations](https://www.conviviumconstellations.com/)
* [Family Constellations (Australia)](https://familyconstellations.com.au/)
* [Faust Family Constellations](https://www.faustfamilyconstellations.com/)
* [International Association for Systemic Constellations (ISCA)](https://isca-network.org)
* [Open Field Institute (in Russian)](https://openfield.ru/)
* [TERRAPIA, School of Transformation](https://terrapia.org/)
* [Urban Healers of LA](https://www.urbanhealersofla.com/)
''');

Widget _methodologies(BuildContext context) => AppMarkdown('''
## Field therapy

To exploit the properties of the field for healing, the therapist:

1. Provides their energy body to increase the client's capacity
to process traumatic energy streams.
2. Uses their attention to unblock movement in the traumatized
areas of client's energy body.

As result, the blocked traumatic energy streams, both personal and ancestral,
get processed and released.

This mechanism is included explicitly or implicitly into
big variety of therapeutic methodologies.

## Family/Systematic/Organizational Constellations

Constellations work the same way as field therapy,
but in a group setting. The facilitator orchestrates energy bodies
and attention of the entire group to unblock and process the client's
traumatic energy streams.

More about constellations:

* [by ISCA](https://isca-network.org/systemic-constellations/what-is-a-constellation/)
* [by Misba Shah](https://instituteofclinicalhypnosis.com/psychotherapy-coaching/systemic-family-constellation/)
* [by Mark Wolynn](https://www.eomega.org/article/rewire-your-life-force-with-family-constellations)

## Field-Aware Art

While every piece of art transforms us both through the field and traditionally recognized body sensors,
some artists rely on the phenomena of the field consciously in their work.
''');

const tabText = {
  PracticesTabs.methodologies: '''
## Field therapy

To exploit the properties of the field for healing, the therapist:

1. Provides their energy body to increase the client's capacity
to process traumatic energy streams.
2. Uses their attention to unblock movement in the traumatized
areas of client's energy body.

As result, the blocked traumatic energy streams, both personal and ancestral,
get processed and released.

This mechanism is included explicitly or implicitly into
big variety of therapeutic methodologies.

## Family/Systematic/Organizational Constellations

Constellations work the same way as field therapy,
but in a group setting. The facilitator orchestrates energy bodies
and attention of the entire group to unblock and process the client's
traumatic energy streams.

More about constellations:

* [by ISCA](https://isca-network.org/systemic-constellations/what-is-a-constellation/)
* [by Misba Shah](https://instituteofclinicalhypnosis.com/psychotherapy-coaching/systemic-family-constellation/)
* [by Mark Wolynn](https://www.eomega.org/article/rewire-your-life-force-with-family-constellations)

## Field-Aware Art

While every piece of art transforms us both through the field and traditionally recognized body sensors,
some artists rely on the phenomena of the field consciously in their work.
''',
  PracticesTabs.people: '''
* [Elena Veselago](https://constellationintensive.com/elena-veselago/), director of Open Field Institute,
* [Gaurav Deka](https://www.drgauravdeka.com/), systemic constellation facilitator, therapist, language: English
* [Katya Altman](https://www.ursatravel.com/) tour organizer and guide to the places of power and shrines of the Earth. Owner of a travel boutique, language: Russian
* [Maria Nefedeva](https://www.marianefedyeva.com/), UX designer, language: English
* [Maxim Komissarchik](https://fineartamerica.com/profiles/maxim-komissarchik?tab=artworkgalleries), artist, language: English
* [Polina Cherkasova](http://polina-c.com), engineer, field practitioner and researcher, language: English
* [Rupert Sheldrake](https://www.sheldrake.org/), biologist, author of the theory of morphic fields, language: English
* [Taya Shopen](https://www.facebook.com/taya.shopen), systemic constellation facilitator,
the author of [Earthybirth](https://earthybirth.com/) swaddling ceremony, the practitioner of image-emotions therapy, language: English, Russian
''',
  PracticesTabs.organizations: '''
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
