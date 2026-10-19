
class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

final List<Movie> movies = [
  Movie(
    title: 'inception',
    genre: 'Sci-Fi',
    year: 2010,
    rating: 8.8,
    image: 'assets/posters/inception.jpg',
  ),
  Movie(
    title: 'interstellar',
    genre: 'Sci-Fi',
    year: 2014,
    rating: 8.7,
    image: 'assets/posters/interstellar.jpg',
  ),
  Movie(
    title: 'the dark knight',
    genre: 'Action',
    year: 2008,
    rating: 9.0,
    image: 'assets/posters/the dark knight.jpg',
  ),
  Movie(
    title: 'titanic',
    genre: 'Romance',
    year: 1997,
    rating: 7.9,
    image: 'assets/posters/titanic.jpg',
  ),
  Movie(
    title: 'Avatar',
    genre: 'Adventure',
    year: 2009,
    rating: 7.9,
    image: 'assets/posters/Avatar.jpg',
  ),
  Movie(
    title: 'Joker',
    genre: 'Drama',
    year: 2019,
    rating: 8.4,
    image: 'assets/posters/joker.jpg',
  ),
  Movie(
    title: 'the lion king',
    genre: 'Animation',
    year: 1994,
    rating: 8.5,
    image: 'assets/posters/the lion king.jpg',
  ),
];