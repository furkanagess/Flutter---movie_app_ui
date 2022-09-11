import 'package:flutter/material.dart';
import 'package:movie_app_ui/models/movie.dart';
import 'package:movie_app_ui/screens/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(
        movie: movie,
      ),
    );
  }
}
