import 'package:flutter/material.dart';
import 'package:news/News/news_view.dart';
import 'package:news/categories/categories_view.dart';
import 'package:news/l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(appLocalizations.home)),
      body: NewsView(),
    );
  }
}
