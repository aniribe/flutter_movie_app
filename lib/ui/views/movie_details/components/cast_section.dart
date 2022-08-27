import 'package:flutter/material.dart';
import '../../../util/ui_helpers.dart';
import 'cast_item.dart';

class CastSection extends StatelessWidget {
  final List<Map> movieCast;

  const CastSection({
    Key? key,
    required this.movieCast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.headline5,
          ),
          verticalSpace(15),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieCast.length,
              itemBuilder: (context, index) => CastItem(
                image: movieCast[index]['image'],
                name: movieCast[index]['orginalName'],
                movieName: movieCast[index]['movieName'],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
