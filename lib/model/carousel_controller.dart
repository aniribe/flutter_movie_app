import 'package:flutter/material.dart';

class CarouselController {
  PageController pageController;
  int initialPage;

  CarouselController({required this.pageController, this.initialPage = 1});
}
