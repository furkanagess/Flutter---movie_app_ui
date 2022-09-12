class Movie {
  final int id, year, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop;
  final List<Map> cast;

  Movie({
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.id,
    required this.year,
    required this.numOfRatings,
    required this.criticsReview,
    required this.metascoreRating,
    required this.rating,
    required this.genra,
    required this.plot,
    required this.cast,
  });
}

List<Movie> movies = [
  Movie(
    id: 1,
    title: "Cold War",
    year: 2018,
    poster: "assets/images/coldwar.jpg",
    backdrop: "assets/images/coldwar_backdrop1.jpg",
    numOfRatings: 150212,
    rating: 7.5,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Romance", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "Jennifer Lawrence",
        "movieName": "Katness Everdeen",
        "image": "assets/images/actor1.jpg",
      },
      {
        "originalName": "Adele Haenel",
        "movieName": "Joanna",
        "image": "assets/images/actor2.jpg",
      },
      {
        "originalName": "Natalie Portman",
        "movieName": "Ken Miles",
        "image": "assets/images/actor3.jpg",
      },
      {
        "originalName": "Jhonny Depp",
        "movieName": "Captain Jack Sparrow",
        "image": "assets/images/actor4.jpg",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Leon ",
    year: 1994,
    poster: "assets/images/leon.jpg",
    backdrop: "assets/images/leon_backdrop.jpg",
    numOfRatings: 722312,
    rating: 8.5,
    criticsReview: 32,
    metascoreRating: 63,
    genra: ["Action", "Crime", "Drama"],
    plot: plotText2,
    cast: [
      {
        "originalName": "Jennifer Lawrence",
        "movieName": "Katness Everdeen",
        "image": "assets/images/actor1.jpg",
      },
      {
        "originalName": "Adele Haenel",
        "movieName": "Joanna",
        "image": "assets/images/actor2.jpg",
      },
      {
        "originalName": "Natalie Portman",
        "movieName": "Ken Miles",
        "image": "assets/images/actor3.jpg",
      },
      {
        "originalName": "Jhonny Depp",
        "movieName": "Captain Jack Sparrow",
        "image": "assets/images/actor4.jpg",
      },
    ],
  ),
  Movie(
    id: 3,
    title: "Portrait of a lady on fire",
    year: 2019,
    poster: "assets/images/portrait.jpg",
    backdrop: "assets/images/portrait_backdrop.jpg",
    numOfRatings: 2356777,
    rating: 8.1,
    criticsReview: 89,
    metascoreRating: 95,
    genra: ["Romance", "Drama"],
    plot: plotText3,
    cast: [
      {
        "originalName": "Jennifer Lawrence",
        "movieName": "Katness Everdeen",
        "image": "assets/images/actor1.jpg",
      },
      {
        "originalName": "Adele Haenel",
        "movieName": "Joanna",
        "image": "assets/images/actor2.jpg",
      },
      {
        "originalName": "Natalie Portman",
        "movieName": "Ken Miles",
        "image": "assets/images/actor3.jpg",
      },
      {
        "originalName": "Jhonny Depp",
        "movieName": "Captain Jack Sparrow",
        "image": "assets/images/actor4.jpg",
      },
    ],
  ),
];

String plotText =
    "In the 1950s, a music director falls in love with a singer and tries to persuade her to flee communist Poland for France.";
String plotText2 =
    "12-year-old Mathilda is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin's trade.";
String plotText3 =
    "On an isolated island in Brittany at the end of the eighteenth century, a female painter is obliged to paint a wedding portrait of a young woman.";
