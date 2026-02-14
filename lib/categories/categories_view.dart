import 'package:flutter/material.dart';
import 'package:news/categories/category_item.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:news/models/category_model.dart';

class CategoriesView extends StatelessWidget {
  void Function(CategoryModel) onCategorySelected;

  CategoriesView({required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            appLocalizations.home_welcome,
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(top: 16),
              itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  onCategorySelected(CategoryModel.categories[index]);
                },
                child: CategoryItem(
                  categoryModel: CategoryModel.categories[index],
                  index: index,
                ),
              ),
              itemCount: CategoryModel.categories.length,
              separatorBuilder: (_, _) => SizedBox(height: 16),
            ),
          ),
        ],
      ),
    );
  }
}
