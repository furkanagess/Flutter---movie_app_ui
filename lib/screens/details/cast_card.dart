import 'package:flutter/material.dart';

import '../../constants.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;
  const CastAndCrew({Key? key, required this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: kDefaultPadding),
          SizedBox(
            height: size.height * 0.17,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => Cast(
                cast: casts[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cast extends StatelessWidget {
  final Map cast;
  const Cast({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: kDefaultPadding),
        width: size.width * 0.2,
        child: Column(
          children: [
            Container(
              height: size.height * 0.08,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    cast['image'],
                  ),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              cast["originalName"],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
              maxLines: 2,
            ),
            SizedBox(height: kDefaultPadding / 4),
            Text(
              cast['movieName'],
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextLightColor),
            ),
          ],
        ),
      ),
    );
  }
}
