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
    title: "Bloodshot",
    year: 2020,
    poster: "assets/images/coldwar.jpg",
    backdrop: "assets/images/coldwar_backdrop1.jpg",
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor1.jpg",
      },
      {
        "originalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor2.jpg",
      },
      {
        "originalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor3.jpg",
      },
      {
        "originalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor4.jpg",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Ford v Ferrari ",
    year: 2019,
    poster: "assets/images/leon.jpg",
    backdrop: "assets/images/leon_backdrop.jpg",
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor1.jpg",
      },
      {
        "originalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor2.jpg",
      },
      {
        "originalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor3.jpg",
      },
      {
        "originalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor4.jpg",
      },
    ],
  ),
  Movie(
    id: 3,
    title: "Onward",
    year: 2020,
    poster: "assets/images/portrait.jpg",
    backdrop: "assets/images/portrait_backdrop.jpg",
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor1.jpg",
      },
      {
        "originalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor2.jpg",
      },
      {
        "originalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor3.jpg",
      },
      {
        "originalName": "Caitrioa Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor4.jpg",
      },
    ],
  ),
];

String plotText = "datadatadatadatadata";
