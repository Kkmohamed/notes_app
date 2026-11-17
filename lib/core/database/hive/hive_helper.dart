import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper<T> {
  final String boxName;

  HiveHelper.name(this.boxName);

  //OPEN BOX
  Future<Box<T>> openBox() async {
    Box<T> box = await Hive.openBox<T>(boxName);
    return box;
  }

  Future<void> closeBox(Box<T> box) async {
    await box.close();
  }

  Future<void> addValue({required String key, required T value}) async {
    Box<T> box = await openBox();
    try {
      await box.put(key, value);
    } finally {
      closeBox(box);
    }
  }

  Future<bool> updateValue({required String key, required T newValue}) async {
    Box<T> box = await openBox();
    bool founded;
    try {
      founded = box.containsKey(key);
      if (founded) {
        await box.put(key, newValue);
      }
    } finally {
      closeBox(box);
    }
    return founded;
  }

  Future<bool> deleteValue({required String key}) async {
    Box<T> box = await openBox();
    bool founded;
    try {
      founded = box.containsKey(key);
      if (founded) {
        await box.delete(key);
      }
    } finally {
      closeBox(box);
    }
    return founded;
  }

  Future<T?> getValue({required String key}) async {
    Box<T> box = await openBox();
    T? data;
    try {
      data = box.get(key);
    } finally {
      closeBox(box);
    }
    return data;
  }
}
