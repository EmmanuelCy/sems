import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _rememberEmail =
          await secureStorage.getString('ff_rememberEmail') ?? _rememberEmail;
    });
    await _safeInitAsync(() async {
      _rememberPassword =
          await secureStorage.getString('ff_rememberPassword') ??
              _rememberPassword;
    });
    await _safeInitAsync(() async {
      _judgeID = await secureStorage.getInt('ff_judgeID') ?? _judgeID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _rememberEmail = '';
  String get rememberEmail => _rememberEmail;
  set rememberEmail(String value) {
    _rememberEmail = value;
    secureStorage.setString('ff_rememberEmail', value);
  }

  void deleteRememberEmail() {
    secureStorage.delete(key: 'ff_rememberEmail');
  }

  String _rememberPassword = '';
  String get rememberPassword => _rememberPassword;
  set rememberPassword(String value) {
    _rememberPassword = value;
    secureStorage.setString('ff_rememberPassword', value);
  }

  void deleteRememberPassword() {
    secureStorage.delete(key: 'ff_rememberPassword');
  }

  String _authUserName = '';
  String get authUserName => _authUserName;
  set authUserName(String value) {
    _authUserName = value;
  }

  int _judgeID = 0;
  int get judgeID => _judgeID;
  set judgeID(int value) {
    _judgeID = value;
    secureStorage.setInt('ff_judgeID', value);
  }

  void deleteJudgeID() {
    secureStorage.delete(key: 'ff_judgeID');
  }

  int _selectedEventID = 0;
  int get selectedEventID => _selectedEventID;
  set selectedEventID(int value) {
    _selectedEventID = value;
  }

  String _selectedEvent = '';
  String get selectedEvent => _selectedEvent;
  set selectedEvent(String value) {
    _selectedEvent = value;
  }

  final _listDepartmentsManager = FutureRequestManager<List<DepartmentsRow>>();
  Future<List<DepartmentsRow>> listDepartments({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<DepartmentsRow>> Function() requestFn,
  }) =>
      _listDepartmentsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearListDepartmentsCache() => _listDepartmentsManager.clear();
  void clearListDepartmentsCacheKey(String? uniqueKey) =>
      _listDepartmentsManager.clearRequest(uniqueKey);

  final _userQueryDataManager = FutureRequestManager<List<UsersRow>>();
  Future<List<UsersRow>> userQueryData({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRow>> Function() requestFn,
  }) =>
      _userQueryDataManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserQueryDataCache() => _userQueryDataManager.clear();
  void clearUserQueryDataCacheKey(String? uniqueKey) =>
      _userQueryDataManager.clearRequest(uniqueKey);

  final _queryEventsManager = FutureRequestManager<List<EventsRow>>();
  Future<List<EventsRow>> queryEvents({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<EventsRow>> Function() requestFn,
  }) =>
      _queryEventsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryEventsCache() => _queryEventsManager.clear();
  void clearQueryEventsCacheKey(String? uniqueKey) =>
      _queryEventsManager.clearRequest(uniqueKey);
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
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
