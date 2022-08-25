import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_colors.dart';
import 'package:movie_app/ui/util/ui_helpers.dart';

import '../../../../model/movie_categories_controller.dart';

Padding buildMovieCategory(MovieCategoryController movieCategories, int index,
    BuildContext context, void Function(int) onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
    child: GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movieCategories.categories[index],
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: index == movieCategories.selectedCategory
                      ? AppColors.textColor
                      : AppColors.textColor.withOpacity(0.5),
                ),
          ),
          verticalSpace(10),
          if (index == movieCategories.selectedCategory)
            Container(
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
        ],
      ),
    ),
  );
}
