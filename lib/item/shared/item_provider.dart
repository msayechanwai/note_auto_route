 import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/service/item_local_service.dart';
import '../../core/shared/core_provider.dart';

final itemLocalServiceProvider = Provider<ItemLocalService>((ref) {
  final appDatabase = ref.watch(appFloorDBProvider).instance;
  return ItemLocalService(appDatabase.itemDao);
});
 
