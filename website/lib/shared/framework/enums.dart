/// AppLinks class contains all external links.
class AppLinks {
  static const discussion =
      'https://github.com/open-field-language/open-field-language/discussions';
  static const pullRequest =
      'https://github.com/open-field-language/open-field-language/pulls';
  static const issue =
      'https://github.com/open-field-language/open-field-language/issues/new?assignees=&labels=change&projects=&template=suggest-a-change-.md&title=';
  static const issuePractices =
      'https://github.com/open-field-language/open-field-language/issues/new?assignees=&labels=practices&projects=&template=add-practice.md&title=Add+a+practice';
  static const telegram = 'https://t.me/+ePJC11fh5JJhYTUx';
}

enum Lang {
  english('English'),
  russian('Russian'),
  ;

  final String name;

  const Lang(this.name);
}

enum EventType {
  travel,
  education,
  constellations,
}
