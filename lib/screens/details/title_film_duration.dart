import 'package:flutter/material.dart';
import 'package:movie_app_ui/constants.dart';

import '../../models/movie.dart';

class titleFilm extends StatelessWidget {
  const titleFilm({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  children: [
                    Text(
                      "${movie.year}",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      "PG-21",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      "2h 12min",
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.08,
            width: size.width * 0.18,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: kSecondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
