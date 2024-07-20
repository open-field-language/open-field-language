import 'package:ofl_web/shared/bricks/text.dart';
import 'package:ofl_web/shared/framework/app_structure.dart';

import '../../shared/bricks/lang.dart';
import '../../shared/framework/links.dart';

final headerText = '''
# Events

This is the list of scientific, therapeutic and travel events, enriched
with the [field-aware practices](${AppMarkdown.redirect(AppRoutes.home)}).

''';

enum EventType {
  travel,
  education,
  constellation,
}

// class FieldEvent {
//   final Map<Lang, Link> name;
//   final DateTime start;
//   final DateTime end;
//   final String location;
//   final EventType type;

//   FieldEvent({
//     required this.name,
//     required this.start,
//     required this.end,
//     required this.location,
//     required this.type,
//   });
// }

// final events = [
//   FieldEvent(
//     name: {
//       Lang.ru: Link(
//         text: 'Треккинг в регионе Анапурны. Хребет Кхопра Данда',
//         link:
//             'https://www.ursatravel.com/tour/trekking-v-regione-anapurny-xrebet-kxopra-danda/',
//       ),
//     },
//     start: DateTime(2025, 5, 5),
//     end: DateTime(2022, 5, 16),
//     location: 'Nepal',
//     type: EventType.travel,
//   ),
//   FieldEvent(
//     name: {
//       Lang.ru: Link(
//         text: 'Баха Калифорния – большой аквариум Северной Америки',
//         link:
//             'https://www.ursatravel.com/tour/baxa-kaliforniya-bolshoj-akvarium-severnoj-ameriki/',
//       ),
//     },
//     start: DateTime(2025, 3, 1),
//     end: DateTime(2025, 3, 7),
//     location: 'Mexico',
//     type: EventType.travel,
//   ),
// ];
