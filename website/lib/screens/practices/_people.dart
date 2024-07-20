import '../../shared/bricks/lang.dart';

class _Person {
  final Map<Lang, String> links;
  final String text;

  _Person(this.text, this.links);

  String get md {
    final langs = links.keys.map((l) => '[${l.name}](${links[l]})').join(', ');
    return '$text<br>$langs';
  }
}

final _people = [
  _Person(
    'Elena Veselago, director of Open Field Institute.',
    {
      Lang.en: 'https://constellationintensive.com/elena-veselago/',
      Lang.ru: 'https://www.b17.ru/veselago/',
    },
  ),
  _Person(
    'Gaurav Deka, systemic constellation facilitator, therapist.',
    {
      Lang.en: 'https://www.drgauravdeka.com/',
    },
  ),
  _Person(
    'Katya Altman, tour organizer and guide to the places of power and shrines of the Earth. Owner of a travel boutique.',
    {
      Lang.ru: 'https://www.ursatravel.com/',
    },
  ),
  _Person(
    'Maria Nefedeva, UX designer.',
    {
      Lang.en: 'https://www.marianefedyeva.com/',
    },
  ),
  _Person(
    'Maxim Komissarchik, artist.',
    {
      Lang.en:
          'https://fineartamerica.com/profiles/maxim-komissarchik?tab=artworkgalleries',
    },
  ),
  _Person(
    'Polina Cherkasova, engineer, field practitioner and researcher.',
    {
      Lang.en: 'http://polina-c.com',
    },
  ),
  _Person(
    'Rupert Sheldrake, biologist, author of the theory of morphic fields.',
    {
      Lang.en: 'https://www.sheldrake.org/',
    },
  ),
  _Person(
    'Taya Shopen, systemic constellation facilitator, the author of [Earthybirth](https://earthybirth.com/) swaddling ceremony, the practitioner of image-emotions therapy.',
    {
      Lang.en: 'https://www.facebook.com/taya.shopen',
      Lang.ru: 'https://www.facebook.com/taya.shopen',
    },
  ),
];
