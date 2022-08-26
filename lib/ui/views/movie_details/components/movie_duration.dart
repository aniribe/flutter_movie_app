import 'package:flutter/cupertino.dart';
import '../../../../constants/app_colors.dart';
import '../../../util/ui_helpers.dart';

class MovieDuration extends StatelessWidget {
  final String year;

  const MovieDuration({
    Key? key,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          year,
          style: const TextStyle(color: AppColors.textLightColor),
        ),
        horizontalSpace(15),
        const Text(
          'PG-13',
          style: TextStyle(color: AppColors.textLightColor),
        ),
        horizontalSpace(15),
        const Text(
          '2h 32 min',
          style: TextStyle(color: AppColors.textLightColor),
        ),
      ],
    );
  }
}
