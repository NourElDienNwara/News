import 'package:flutter/material.dart';
import 'package:news/models/source_model.dart';

class TabItem extends StatelessWidget {
  SourceModel sourceModel;
  bool isSelected;

  TabItem({required this.sourceModel, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        sourceModel.name,
        style: isSelected
            ? Theme.of(context).textTheme.titleMedium
            : Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
