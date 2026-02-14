import 'package:flutter/material.dart';
import 'package:news/News/news_item.dart';
import 'package:news/News/tab_item.dart';
import 'package:news/app_theme.dart';
import 'package:news/models/source_model.dart';
import 'package:news/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    List<SourceModel> sources = List.generate(
      10,
      (index) => SourceModel(id: '$index', name: 'source $index'),
    );

    int currentIndex = 0;

    return Column(
      children: [
        DefaultTabController(
          length: sources.length,
          child: TabBar(
            isScrollable: true,
            tabAlignment: .start,
            labelPadding: EdgeInsetsDirectional.only(start: 16),
            dividerColor: Colors.transparent,
            indicatorColor: settingsProvider.isDark
                ? AppTheme.color.white
                : AppTheme.color.black,
            tabs: sources
                .map(
                  (source) => TabItem(
                    sourceModel: source,
                    isSelected: currentIndex == sources.indexOf(source),
                  ),
                )
                .toList(),
            onTap: (index) {
              if (currentIndex == index) return;
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),

        Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) => NewsItem(),
            separatorBuilder: (_, _) => SizedBox(height: 16),
            itemCount: 10,
            padding: EdgeInsets.all(16),
          ),
        ),
      ],
    );
  }
}
