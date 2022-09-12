import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/movie.dart';
import '../genre_card.dart';

class filmGenres extends StatelessWidget {
  const filmGenres({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: size.height * 0.05,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => GenreCard(
            genre: movie.genra[index],
          ),
        ),
      ),
    );
  }
}
