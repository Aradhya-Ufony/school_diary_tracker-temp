import 'dart:async';
import 'dart:developer' as dev;
import '../../../data/repositories/dvir_repository.dart';

class DvirSyncWorker {
  final DvirRepository _repository;
  Timer? _syncTimer;
  bool _isSyncing = false;

  DvirSyncWorker(this._repository);

  void start() {
    dev.log('Starting eDVIR Sync Worker', name: 'DvirSyncWorker');
    _syncTimer = Timer.periodic(const Duration(minutes: 5), (timer) async {
      await flushQueue();
    });
  }

  Future<void> flushQueue() async {
    if (_isSyncing) return;
    _isSyncing = true;
    try {
      await _repository.flushOfflineQueue();
    } catch (_) {} finally {
      _isSyncing = false;
    }
  }

  void dispose() {
    _syncTimer?.cancel();
  }
}