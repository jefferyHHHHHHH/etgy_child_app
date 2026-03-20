import 'dart:convert';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../storage/secure_storage_service.dart';

final deviceIdServiceProvider = Provider<DeviceIdService>((Ref ref) {
  return DeviceIdService(ref.watch(secureStorageServiceProvider));
});

class DeviceIdService {
  DeviceIdService(this._storage);

  final SecureStorageService _storage;

  static const String _deviceIdKey = 'device_id_v1';

  Future<String> getOrCreate() async {
    final existing = await _storage.read(key: _deviceIdKey);
    if (existing != null && existing.trim().isNotEmpty) {
      return existing.trim();
    }

    final id = _generate();
    await _storage.write(key: _deviceIdKey, value: id);
    return id;
  }

  String _generate() {
    final bytes = List<int>.generate(18, (_) => Random.secure().nextInt(256));
    return base64UrlEncode(bytes).replaceAll('=', '');
  }
}
