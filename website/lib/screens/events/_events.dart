import 'package:ofl_web/shared/bricks/text.dart';
import 'package:ofl_web/shared/framework/app_structure.dart';

import '../../shared/framework/enums.dart';

final headerText = '''
# Events

This is the list of scientific, therapeutic and travel events, enriched
with the [field-aware practices](${AppMarkdown.redirect(AppRoutes.home)}).

''';

class FieldEvent {
  final DateTime start;
  final DateTime end;
  final Lang lang;
  final String link;
  final String location;
  final String name;
  final EventType type;

  FieldEvent({
    required this.name,
    required this.start,
    required this.end,
    required this.lang,
    required this.link,
    required this.location,
    required this.type,
  });
}

final events = [
  FieldEvent(
    name: 'Треккинг в регионе Анапурны. Хребет Кхопра Данда',
    start: DateTime(2025, 5, 5),
    end: DateTime(2022, 5, 16),
    lang: Lang.russian,
    link:
        'https://www.ursatravel.com/tour/trekking-v-regione-anapurny-xrebet-kxopra-danda/',
    location: 'Nepal',
    type: EventType.travel,
  ),
  FieldEvent(
    name: 'Баха Калифорния – большой аквариум Северной Америки',
    start: DateTime(2025, 3, 1),
    end: DateTime(2025, 3, 7),
    lang: Lang.russian,
    link:
        'https://www.ursatravel.com/tour/baxa-kaliforniya-bolshoj-akvarium-severnoj-ameriki/',
    location: 'Mexico',
    type: EventType.travel,
  ),
  FieldEvent(
    name: '',
    start: DateTime(2025, 3, 1),
    end: DateTime(2025, 3, 7),
    lang: Lang.russian,
    link: '',
    location: 'Mexico',
    type: EventType.travel,
  ),
];
