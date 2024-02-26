import '../database.dart';

class Mp3Table extends SupabaseTable<Mp3Row> {
  @override
  String get tableName => 'mp3';

  @override
  Mp3Row createRow(Map<String, dynamic> data) => Mp3Row(data);
}

class Mp3Row extends SupabaseDataRow {
  Mp3Row(super.data);

  @override
  SupabaseTable get table => Mp3Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get songTitle => getField<String>('song_title');
  set songTitle(String? value) => setField<String>('song_title', value);

  String? get urlLink => getField<String>('url_link');
  set urlLink(String? value) => setField<String>('url_link', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get singer => getField<String>('singer');
  set singer(String? value) => setField<String>('singer', value);

  String? get magnet1080 => getField<String>('magnet1080');
  set magnet1080(String? value) => setField<String>('magnet1080', value);
}
