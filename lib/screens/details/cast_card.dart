import 'package:flutter/material.dart';

import '../../constants.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;
  const CastAndCrew({Key? key, required this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            height: 140,
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
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: kDefaultPadding),
        width: 80,
        child: Column(
          children: [
            Container(
              height: 70,
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
