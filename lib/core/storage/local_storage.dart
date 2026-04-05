import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveSevice {
  static final HiveSevice _instance = HiveSevice._internal();

  factory HiveSevice() => _instance;

  HiveSevice._internal();

  static const String _boxname = 'appbox';

  // get box
  Box get _box => Hive.box(_boxname);

  // set box
  Future<void> setData(String key, dynamic value) async {
    await _box.put(key, value);
  }

  //get data
  T? getData<T>(String key) {
    return _box.get(key) as T?;
  }

  // remove data
  Future<void> removeData(String key) async {
    await _box.delete(key);
  }

  bool checkContainKey(String key) {
    return _box.containsKey(key);
  }
  // init method

  static Future<void> initHive() async {
    var directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    await Hive.openBox(_boxname);
  }
}
