import 'package:ofl_web/shared/framework/links.dart';

import '../../shared/bricks/text.dart';
import '../../shared/framework/app_structure.dart';

final text1 = '''
# Participate

There is a number of options to participate.

## Add a Practice (free)

To add a practice to [the list](${AppMarkdown.redirect(AppRoutes.practicesPeople)}),
either request it in [the telegram channel](${AppLinks.telegram}) or create
[an issue](${AppLinks.issuePractices}) or
[suggest an edit](https://github.com/open-field-language/open-field-language/blob/main/website/lib/screens/practices/_content.dart).

## Register an Event (paid)

To add an an event to [the list](${AppMarkdown.redirect(AppRoutes.events)}):

1. [Submit](https://www.paypal.com/ncp/payment/RU9FZGSJRBS6E) a payment (without picture \$18, with picture: \$44).
2. [Telegram](https://t.me/polina_314159) the following information:
    - Link to the event
    - Picture (if selected)
    - Event language
    - Date, time and place
    - Proof of payment
3. Expect the request to be processed within 2 business days.

## Subscribe

To be notified about all changes in language and website,
and all discussions, open [the repository](https://github.com/open-field-language/open-field-language),
sign in and click 'Notifications' or ‘Watch’.
You can configure the volume of notifications and either direct
them to your email or get them in your ‘Inbox’ in GitHub.

[Read more.](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github)

## Discuss

Create or join [a discussion](${AppLinks.discussion}).

## Share

Increase awareness about the language searchability of this site by
referencing it on your website or in a public social media post,
mentioning it in printed materials or
sharing it with people who may be curious about the field or project.

## Suggest a Change

Suggest an edit for the language, to make it more concise, precise and easier to understand.

For simple obvious edits create
[an issue](${AppLinks.issue})
or, if you have enough skills,
[pull request](https://github.com/open-field-language/open-field-language/pulls).

For more complicated edits, start [a discussion](${AppLinks.discussion}).

## Contact

For questions start [a discussion](${AppLinks.discussion}), post to
[telegram](${AppLinks.telegram}) or contact [polina-c](http://polina-c.com).
''';
