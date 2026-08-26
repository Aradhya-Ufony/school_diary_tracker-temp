import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/di/providers.dart';
import '../../../data/models/child_with_guardians.dart';
import '../../../data/repositories/children_repository.dart';

class ChildrenState {
  final bool isLoading;
  final List<ChildWithGuardians> children;
  final String? error;

  const ChildrenState({
    this.isLoading = false,
    this.children = const [],
    this.error,
  });

  ChildrenState copyWith({
    bool? isLoading,
    List<ChildWithGuardians>? children,
    String? error,
  }) {
    return ChildrenState(
      isLoading: isLoading ?? this.isLoading,
      children: children ?? this.children,
      error: error,
    );
  }
}

class ChildrenViewModel extends StateNotifier<ChildrenState> {
  final ChildrenRepository _repository;
  final int routeId;

  ChildrenViewModel({
    required ChildrenRepository repository,
    required this.routeId,
  })  : _repository = repository,
        super(const ChildrenState()) {
    _load();
  }

  Future<void> _load() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final children = await _repository.getChildren(routeId);
      state = state.copyWith(isLoading: false, children: children);
    } catch (e, stack) {
      print('CHILDREN_VIEWMODEL_ERROR: $e');
      print('CHILDREN_VIEWMODEL_STACK: $stack');
      state = state.copyWith(
        isLoading: false,
        error: 'Unable to load children: $e',
      );
    }
  }

  Future<void> refresh() => _load();
}

final childrenViewModelProvider = StateNotifierProvider.autoDispose
    .family<ChildrenViewModel, ChildrenState, int>((ref, routeId) {
  return ChildrenViewModel(
    repository: ref.watch(childrenRepositoryProvider),
    routeId: routeId,
  );
});
