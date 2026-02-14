import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/app_theme.dart';
import 'package:news/models/category_model.dart';
import 'package:news/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class HomeDrower extends StatelessWidget {
  void Function() resetSelectedCategory;

  HomeDrower({required this.resetSelectedCategory});
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: settingsProvider.isDark
          ? AppTheme.color.black
          : AppTheme.color.white,
      child: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.2,
            alignment: .center,
            color: settingsProvider.isDark
                ? AppTheme.color.white
                : AppTheme.color.black,
            child: Text(
              'News App',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: settingsProvider.isDark
                    ? AppTheme.color.black
                    : AppTheme.color.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              resetSelectedCategory();
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/home.svg',
                    height: 24,
                    width: 24,
                    fit: .scaleDown,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Go To Home',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
