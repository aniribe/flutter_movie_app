import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/ui/views/movie_details/components/title.dart';
import '../../../util/ui_helpers.dart';
import 'add_button.dart';
import 'movie_duration.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final String year;

  const TitleSection({
    Key? key,
    required this.title,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieTitle(title: title),
                verticalSpace(15),
                MovieDuration(year: year),
              ],
            ),
          ),
          const AddButton(),
        ],
      ),
    );
  }
}
