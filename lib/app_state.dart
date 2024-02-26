import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _apiKey = await secureStorage.getString('ff_apiKey') ?? _apiKey;
    });
    await _safeInitAsync(() async {
      _movieid = await secureStorage.getInt('ff_movieid') ?? _movieid;
    });
    await _safeInitAsync(() async {
      _title = await secureStorage.getString('ff_title') ?? _title;
    });
    await _safeInitAsync(() async {
      _musicUrl = await secureStorage.getString('ff_musicUrl') ?? _musicUrl;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _apiKey = 'b301955c69f1748efc24b1b24fb698be';
  String get apiKey => _apiKey;
  set apiKey(String value) {
    _apiKey = value;
    secureStorage.setString('ff_apiKey', value);
  }

  void deleteApiKey() {
    secureStorage.delete(key: 'ff_apiKey');
  }

  int _movieid = 0;
  int get movieid => _movieid;
  set movieid(int value) {
    _movieid = value;
    secureStorage.setInt('ff_movieid', value);
  }

  void deleteMovieid() {
    secureStorage.delete(key: 'ff_movieid');
  }

  String _title = '';
  String get title => _title;
  set title(String value) {
    _title = value;
    secureStorage.setString('ff_title', value);
  }

  void deleteTitle() {
    secureStorage.delete(key: 'ff_title');
  }

  String _musicTitle = '';
  String get musicTitle => _musicTitle;
  set musicTitle(String value) {
    _musicTitle = value;
  }

  String _musicUrl = '';
  String get musicUrl => _musicUrl;
  set musicUrl(String value) {
    _musicUrl = value;
    secureStorage.setString('ff_musicUrl', value);
  }

  void deleteMusicUrl() {
    secureStorage.delete(key: 'ff_musicUrl');
  }

  String _fullmovielink = '';
  String get fullmovielink => _fullmovielink;
  set fullmovielink(String value) {
    _fullmovielink = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
