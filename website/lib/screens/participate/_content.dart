import 'package:ofl_web/shared/bricks/text.dart';
import 'package:ofl_web/shared/framework/app_structure.dart';

final text1 = '''
# Participate

There is a number of options to participate.

## Join

[Join the community.](${AppMarkdown.redirect(AppRoutes.participate)})

## Subscribe

To be notified about all changes in language and website,
and all discussions open the repository and click ‘Watch’.
You can configure the volume of notifications and direct
them to your email or get them in your ‘Inbox’ in GitHub.
[Read more.](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github)

## Discuss

Create https://github.com/open-field-language/open-field-language/discussions

## Contribute

There are ways to contribute:

Suggest yourself to be listed (or unlisted, or updated) in the community. Provide name, profession, public representation and/or channel to contact you directly.

Increase awareness about the language searchability of this site by:
referencing it on your website or in a public social media post
mentioning in printed materials
sharing with people who may be curious about the field

Suggest an edit for the language, to make it more concise, precise and easier to understand:
for simple obvious edits use the doc or form
for more complicated edits, that may trigger discussion, create an issue or pull request
For questionable edits the maintainer will request to collect approvals from more community members.
Contact
For public questions create an issue, for private questions tweet @PolinaCC.
''';
