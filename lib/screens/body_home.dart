import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_ui/constants.dart';
import 'package:movie_app_ui/screens/genre_card.dart';
import 'package:movie_app_ui/screens/genres.dart';
import 'dart:math' as math;

import '../models/movie.dart';
import 'categories.dart';
import 'movie_card.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
