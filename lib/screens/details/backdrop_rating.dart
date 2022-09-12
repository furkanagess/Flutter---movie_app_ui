import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app_ui/constants.dart';

import '../../models/movie.dart';

class backdropRatingWidget extends StatelessWidget {
  const backdropRatingWidget({
    Key? key,
    required this.size,
    required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              image: DecorationImage(
                image: AssetImage(movie.backdrop),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 50,
                    color: Color(0xFF12153D).withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 50,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: " ${movie.rating} / ",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                                text: "10\n", style: TextStyle(fontSize: 12)),
                            TextSpan(
                              text: "150,231",
                              style: TextStyle(color: kTextLightColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_outline,
                        size: 55,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Rate This",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color(0xFF51CF66),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          "${movie.metascoreRating}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      Text(
                        "Metascore",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "73 critic reviews",
                        style: TextStyle(
                          color: kTextLightColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SafeArea(child: BackButton()),
        ],
      ),
    );
  }
}
