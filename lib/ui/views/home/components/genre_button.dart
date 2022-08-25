import 'package:flutter/cupertino.dart';

import '../../../../constants/app_colors.dart';
import '../../../util/ui_helpers.dart';

class GenreButton extends StatelessWidget {
  final String genre;

  const GenreButton({
    Key? key,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 4),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.textColor.withOpacity(0.6)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(
          color: AppColors.textColor.withOpacity(0.8),
          fontSize: 16,
        ),
      ),
    );
  }
}
