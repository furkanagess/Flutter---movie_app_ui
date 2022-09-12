import 'package:flutter/material.dart';
import 'package:movie_app_ui/constants.dart';
import 'package:movie_app_ui/models/movie.dart';

class plotContent extends StatelessWidget {
  const plotContent({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        movie.plot,
        style: TextStyle(
          color: Color.fromARGB(255, 30, 32, 59),
        ),
      ),
    );
  }
}

class plotWidget extends StatelessWidget {
  const plotWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding / 1.2),
      child: Text(
        "Plot Summary",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
