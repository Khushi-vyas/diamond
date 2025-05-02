import 'package:get_storage/get_storage.dart';

class StorageService {
  StorageService._();

  static final instance = StorageService._();

  static var storageBox = GetStorage();

  void save(String key, dynamic value) {
    storageBox.write(key, value);
  }

  dynamic fetch(String key) {
    return storageBox.read(key) ?? "";
  }

  void remove(String key) {
    storageBox.remove(key);
  }

  clear() {
    storageBox.erase();
  }
}
