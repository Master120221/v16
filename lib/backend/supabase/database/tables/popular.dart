import '../database.dart';

class PopularTable extends SupabaseTable<PopularRow> {
  @override
  String get tableName => 'popular';

  @override
  PopularRow createRow(Map<String, dynamic> data) => PopularRow(data);
}

class PopularRow extends SupabaseDataRow {
  PopularRow(super.data);

  @override
  SupabaseTable get table => PopularTable();

  int? get movieid => getField<int>('movieid');
  set movieid(int? value) => setField<int>('movieid', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  double? get voteAverage => getField<double>('vote_average');
  set voteAverage(double? value) => setField<double>('vote_average', value);

  int? get voteCount => getField<int>('vote_count');
  set voteCount(int? value) => setField<int>('vote_count', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get releaseDate => getField<DateTime>('release_date');
  set releaseDate(DateTime? value) => setField<DateTime>('release_date', value);

  int? get revenue => getField<int>('revenue');
  set revenue(int? value) => setField<int>('revenue', value);

  int? get runtime => getField<int>('runtime');
  set runtime(int? value) => setField<int>('runtime', value);

  bool? get adult => getField<bool>('adult');
  set adult(bool? value) => setField<bool>('adult', value);

  String? get backdropPath => getField<String>('backdrop_path');
  set backdropPath(String? value) => setField<String>('backdrop_path', value);

  int? get budget => getField<int>('budget');
  set budget(int? value) => setField<int>('budget', value);

  String? get homepage => getField<String>('homepage');
  set homepage(String? value) => setField<String>('homepage', value);

  String? get imdbId => getField<String>('imdb_id');
  set imdbId(String? value) => setField<String>('imdb_id', value);

  String? get originalLanguage => getField<String>('original_language');
  set originalLanguage(String? value) =>
      setField<String>('original_language', value);

  String? get originalTitle => getField<String>('original_title');
  set originalTitle(String? value) => setField<String>('original_title', value);

  String? get overview => getField<String>('overview');
  set overview(String? value) => setField<String>('overview', value);

  double? get popularity => getField<double>('popularity');
  set popularity(double? value) => setField<double>('popularity', value);

  String? get posterPath => getField<String>('poster_path');
  set posterPath(String? value) => setField<String>('poster_path', value);

  String? get tagline => getField<String>('tagline');
  set tagline(String? value) => setField<String>('tagline', value);

  String? get genres => getField<String>('genres');
  set genres(String? value) => setField<String>('genres', value);

  String? get productionCompanies => getField<String>('production_companies');
  set productionCompanies(String? value) =>
      setField<String>('production_companies', value);

  String? get productionCountries => getField<String>('production_countries');
  set productionCountries(String? value) =>
      setField<String>('production_countries', value);

  String? get spokenLanguages => getField<String>('spoken_languages');
  set spokenLanguages(String? value) =>
      setField<String>('spoken_languages', value);

  String? get trailerYoutubeLink => getField<String>('trailer_youtube_link');
  set trailerYoutubeLink(String? value) =>
      setField<String>('trailer_youtube_link', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);

  String? get movieLink1 => getField<String>('movie_link1');
  set movieLink1(String? value) => setField<String>('movie_link1', value);

  String? get movieLink2 => getField<String>('movie_link2');
  set movieLink2(String? value) => setField<String>('movie_link2', value);
}
