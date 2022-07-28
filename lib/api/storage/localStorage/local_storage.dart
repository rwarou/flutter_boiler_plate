import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final _storage = const FlutterSecureStorage();

  Future<dynamic> getValue(String key) async {
    try {
      return await _storage.read(key: key);
    } catch (e) {
      print('localStorage getValue error : $e');
      return;
    }
  }

  Future<dynamic> setValue(String key, dynamic value) async {
    try {
      await _storage.write(key: key, value: value);
    } catch (e) {
      print('localStorage setValue error : $e');
      return;
    }
  }

  Future<dynamic> deleteValue(String key) async {
    try {
      await _storage.delete(key: key);
    } catch (e) {
      print('localStorage deleteValue error : $e');
      return;
    }
  }
}
