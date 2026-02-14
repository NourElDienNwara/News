import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    DateTime dateTime = DateTime.now().subtract(Duration(minutes: 20));

    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: settingsProvider.isDark
              ? AppTheme.color.white
              : AppTheme.color.black,
        ),
      ),
      child: Column(
        mainAxisAlignment: .start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/new.png',
              height: MediaQuery.sizeOf(context).height * 0.25,
              width: double.infinity,
              fit: .fill,
            ),
          ),

          SizedBox(height: 10),

          Text(
            '40-year-old man falls 200 feet to his death while canyoneering at national park',
            style: Theme.of(context).textTheme.titleMedium,
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'By : Jon Haworth',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                timeago.format(dateTime),
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
