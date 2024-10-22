class MovieData {
  late final String? immagine;

  MovieData({
    required this.immagine,
  });

  factory MovieData.fromJson(Map<String, dynamic> json) {
    return MovieData(
      immagine: json['poster_path'] != null
          ? 'https://image.tmdb.org/t/p/w780${json['poster_path']}'
          : null,
      );
  }
}