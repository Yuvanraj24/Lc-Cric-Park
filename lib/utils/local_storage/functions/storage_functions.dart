import 'package:get_storage/get_storage.dart';

class LocalStorageFunctions {
  static final GetStorage deviceStorage = GetStorage();

  // Save a string
  static void saveString(String key, String value) {
    deviceStorage.write(key, value);
  }

  // Retrieve a string
  static String? getString(String key) {
    return deviceStorage.read<String>(key);
  }

  // Save an integer
  static void saveInt(String key, int value) {
    deviceStorage.write(key, value);
  }

  // Retrieve an integer
  static int? getInt(String key) {
    return deviceStorage.read<int>(key);
  }

  // Save a boolean
  static void saveBool(String key, bool value) {
    deviceStorage.write(key, value);
  }

  // Retrieve a boolean
  static bool? getBool(String key) {
    return deviceStorage.read<bool>(key);
  }

  // Save a list of strings
  static void saveStringList(String key, List<String> value) {
    deviceStorage.write(key, value);
  }

  // Retrieve a list of strings
  static List<String>? getStringList(String key) {
    return deviceStorage.read<List<String>>(key);
  }

  // Remove a specific key
  static void remove(String key) {
    deviceStorage.remove(key);
  }

  // Clear all stored data
  static void clear() {
    deviceStorage.erase();
  }
}
