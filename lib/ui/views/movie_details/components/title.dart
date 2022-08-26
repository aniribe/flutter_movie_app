import 'package:flutter/material.dart';

class MovieTitle extends StatelessWidget {
  final String title;

  const MovieTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
