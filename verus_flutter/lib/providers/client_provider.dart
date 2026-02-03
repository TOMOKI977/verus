import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:verus_client/verus_client.dart';
import 'package:verus_flutter/main.dart';

final clientProvider = Provider<Client>((ref) {
  return client;
});
