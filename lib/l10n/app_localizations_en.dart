// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home_title => 'Articles';

  @override
  String get allArticles => 'All Articles';

  @override
  String get savedArticles => 'Saved Articles';

  @override
  String get view_all_comment_btn_tex => 'View All Comments';

  @override
  String get article_detail_title => 'Article Detail';
}
