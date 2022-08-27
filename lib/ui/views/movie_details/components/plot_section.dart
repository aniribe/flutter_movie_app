import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';
import '../../../util/ui_helpers.dart';

class PlotSection extends StatelessWidget {
  final String plotText;

  const PlotSection({
    Key? key,
    required this.plotText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Plot Summary',
            style: Theme.of(context).textTheme.headline5,
          ),
          verticalSpace(20),
          Text(
            plotText,
            style: TextStyle(
              color: AppColors.textColor.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
