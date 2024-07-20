import 'package:flutter/material.dart';
import 'package:ofl_web/shared/bricks/text.dart';

import '../../shared/bricks/card.dart';
import '../../shared/bricks/lang.dart';

class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _people.map((p) => _PersonCard(p)).toList(),
    );
  }
}

class _PersonCard extends StatelessWidget {
  const _PersonCard(this.person);

  final _Person person;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Container(
        width: 600,
        padding: EdgeInsets.all(5),
        child: AppMarkdown(person.md()),
      ),
    );
  }
}

class _Person {
  final Map<Lang, String> links;
  final String text;

  _Person(this.text, this.links);

  String md() {
    const space = '&nbsp;&nbsp;&nbsp;';
    final langs = links.keys.map((l) => '[${l.name}](${links[l]})').join(space);
    return '$text$space$langs';
  }
}

final _people = [
  _Person(
    '**Elena Veselago**, director of Open Field Institute.',
    {
      Lang.en: 'https://constellationintensive.com/elena-veselago/',
      Lang.ru: 'https://www.b17.ru/veselago/',
    },
  ),
  _Person(
    '**Gaurav Deka**, systemic constellation facilitator, therapist.',
    {
      Lang.en: 'https://www.drgauravdeka.com/',
    },
  ),
  _Person(
    '**Katya Altman**, tour organizer and guide to the places of power and shrines of the Earth. Owner of a travel boutique.',
    {
      Lang.ru: 'https://www.ursatravel.com/',
    },
  ),
  _Person(
    '**Maria Nefedeva**, UX designer.',
    {
      Lang.en: 'https://www.marianefedyeva.com/',
    },
  ),
  _Person(
    '**Maxim Komissarchik**, artist.',
    {
      Lang.en:
          'https://fineartamerica.com/profiles/maxim-komissarchik?tab=artworkgalleries',
    },
  ),
  _Person(
    '**Polina Cherkasova**, engineer, field practitioner and researcher.',
    {
      Lang.en: 'http://polina-c.com',
    },
  ),
  _Person(
    '**Rupert Sheldrake**, biologist, author of the theory of morphic fields.',
    {
      Lang.en: 'https://www.sheldrake.org/',
    },
  ),
  _Person(
    '**Taya Shopen**, systemic constellation facilitator, the author of [Earthybirth](https://earthybirth.com/) swaddling ceremony, the practitioner of image-emotions therapy.',
    {
      Lang.en: 'https://www.facebook.com/taya.shopen',
      Lang.ru: 'https://www.facebook.com/taya.shopen',
    },
  ),
];
