import 'package:ofl_web/shared/bricks/links.dart';
import 'package:ofl_web/shared/bricks/text.dart';
import 'package:ofl_web/shared/framework/app_structure.dart';

final text1 = '''
# Participate

There is a number of options to participate.

## Join

[Join the community.](${AppMarkdown.redirect(AppRoutes.community)})

## Subscribe

To be notified about all changes in language and website,
and all discussions, open [the repository](https://github.com/open-field-language/open-field-language),
sign in and click 'Notifications' or ‘Watch’.
You can configure the volume of notifications and either direct
them to your email or get them in your ‘Inbox’ in GitHub.

[Read more.](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github)

## Discuss

Create or join [a discussion](${AppLinks.discussion}).

## Reference

Increase awareness about the language searchability of this site by
referencing it on your website or in a public social media post,
mentioning it in printed materials or
sharing it with people who may be curious about the field or project.

## Suggest a Change

Suggest an edit for the language, to make it more concise, precise and easier to understand.

For simple obvious edits create
[an issue](https://github.com/open-field-language/open-field-language/issues/new?assignees=&labels=change&projects=&template=suggest-a-change-.md&title=)
or, if you have enough skills,
[pull request](https://github.com/open-field-language/open-field-language/pulls).

For more complicated edits, start [a discussion](${AppLinks.discussion}).

## Contact

For public questions start [a discussion](${AppLinks.discussion}), for private questions
[telegram Polina](${AppLinks.polinaTelegram}).
''';
