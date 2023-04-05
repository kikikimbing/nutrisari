import 'package:shared_preferences/shared_preferences.dart';

abstract class NameLocalDataSource {
  Future<String> getName();

  Future<bool> setName({
    required String name,
  });
}

class NameLocalDataSourceImpl extends NameLocalDataSource {
  final SharedPreferences sharedPreferences;

  NameLocalDataSourceImpl({
    required this.sharedPreferences,
  });

  @override
  Future<String> getName() async {
    final result = sharedPreferences.getString('name');
    return result ?? "";
  }

  @override
  Future<bool> setName({
    required String name,
  }) async =>
      sharedPreferences.setString('name', name);
}
