import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_ui/constants.dart';
import 'package:movie_app_ui/screens/details/plot.dart';
import 'package:movie_app_ui/screens/details/title_film_duration.dart';
import 'package:movie_app_ui/screens/genre_card.dart';

import '../../models/movie.dart';
import 'backdrop_rating.dart';
import 'cast_card.dart';
import 'film_genres.dart';

class DetailsBody extends StatelessWidget {
  final Movie movie;
  const DetailsBody({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          backdropRatingWidget(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          titleFilm(movie: movie),
          filmGenres(movie: movie),
          plotWidget(),
          plotContent(movie: movie),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
