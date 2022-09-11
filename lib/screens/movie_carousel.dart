import 'package:flutter/material.dart';
import 'package:movie_app_ui/screens/movie_card.dart';

import '../constants.dart';
import '../models/movie.dart';
import 'dart:math' as math;

class MovieCarousel extends StatefulWidget {
  MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMovieSlider(index),
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: ((context, child) {
        double value = 0;
        if (_pageController.position.haveDimensions) {
          value = index - _pageController.page!;
          value = (value * 0.038).clamp(-1, 1);
        }
        return AnimatedOpacity(
          duration: Duration(
            microseconds: 350,
          ),
          opacity: initialPage == index ? 1 : 0.4,
          child: Transform.rotate(
              angle: math.pi * value, child: MovieCard(movie: movies[index])),
        );
      }),
      child: MovieCard(
        movie: movies[index],
      ),
    );
  }
}
