enum Lang {
  en(name: 'English', abbr: 'DE'),
  ru(name: 'Russian', abbr: 'RU'),
  uk(name: 'Ukrainian', abbr: 'UA'),
  de(name: 'German', abbr: 'DE'),
  ;

  final String name;
  final String abbr;

  const Lang({required this.name, required this.abbr});
}
