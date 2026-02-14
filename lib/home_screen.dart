import 'package:flutter/material.dart';
import 'package:news/News/news_view.dart';
import 'package:news/categories/categories_view.dart';
import 'package:news/drower/home_drower.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:news/models/category_model.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryModel? selectedCategory;

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedCategory == null
              ? appLocalizations.home
              : selectedCategory!.name,
        ),
      ),
      drawer: HomeDrower(resetSelectedCategory: resetSelectedCategory),
      body: selectedCategory == null
          ? CategoriesView(onCategorySelected: onCategorySelected)
          : NewsView(categoryID: selectedCategory!.id),
    );
  }

  void onCategorySelected(CategoryModel category) {
    setState(() {
      selectedCategory = category;
    });
  }

  void resetSelectedCategory() {
    if (selectedCategory == null) return;
    setState(() {
      selectedCategory = null;
    });
  }
}
