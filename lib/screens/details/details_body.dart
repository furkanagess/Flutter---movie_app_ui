import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_ui/constants.dart';

import '../../models/movie.dart';
import 'backdrop_rating.dart';

class DetailsBody extends StatelessWidget {
  final Movie movie;
  const DetailsBody({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        backdropRatingWidget(size: size, movie: movie),
      ],
    );
  }
}
