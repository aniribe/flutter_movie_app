import 'package:flutter/cupertino.dart';
import '../../../../constants/app_colors.dart';
import '../../../util/ui_helpers.dart';

class MetaScore extends StatelessWidget {
  final String metascoreRating;

  const MetaScore({Key? key, required this.metascoreRating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: AppColors.green,
            borderRadius: BorderRadius.circular(2),
          ),
          child: Text(
            metascoreRating,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        verticalSpace(10),
        const Text(
          'Metascore',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          '62 critic reviews',
          style: TextStyle(
            color: AppColors.textLightColor,
          ),
        ),
      ],
    );
  }
}
