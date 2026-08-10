import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/app_constants.dart';
import '../../../data/models/child_with_guardians.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../core/utils/image_utils.dart';
import '../viewmodel/children_viewmodel.dart';

class ChildrenScreen extends ConsumerWidget {
  final int routeId;
  final String routeName;

  const ChildrenScreen({
    super.key,
    required this.routeId,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(childrenViewModelProvider(routeId));

    return Scaffold(
      appBar: AppBar(title: Text(l10n.childrenTitle(routeName))),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.read(childrenViewModelProvider(routeId).notifier).refresh(),
        child: state.isLoading && state.children.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : state.error != null && state.children.isEmpty
                ? Center(child: Text(state.error!))
                : ListView.separated(
                    itemCount: state.children.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final child = state.children[index];
                      final resolvedUrl = resolveImageUrl(child.imageUrl);
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: resolvedUrl != null
                              ? NetworkImage(resolvedUrl)
                              : const AssetImage(Constants.CONTACT_AVATAR)
                                  as ImageProvider,
                        ),
                        title: Text(child.fullName),
                        subtitle: Text(
                          child.isPicked
                              ? l10n.childrenStatusPicked
                              : (child.isDropped
                                  ? l10n.childrenStatusDropped
                                  : l10n.childrenStatusPending),
                        ),
                        trailing: TextButton(
                          onPressed: () => _showGuardians(context, child),
                          child: Text(l10n.childrenActionGuardians),
                        ),
                      );
                    },
                  ),
      ),
    );
  }

  void _showGuardians(BuildContext context, ChildWithGuardians child) {
    final l10n = AppLocalizations.of(context)!;
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        if (child.guardians.isEmpty) {
          return Padding(
            padding: const EdgeInsets.all(24),
            child: Text(l10n.childrenNoGuardians),
          );
        }
        return ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              l10n.childrenGuardiansFor(child.fullName),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ...child.guardians.map(
              (g) {
                final resolvedUrl = resolveImageUrl(g.imageUrl);
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: resolvedUrl != null
                        ? NetworkImage(resolvedUrl)
                        : const AssetImage(Constants.CONTACT_AVATAR)
                            as ImageProvider,
                  ),
                  title: Text(g.fullName),
                  subtitle: g.relation != null ? Text(g.relation!) : null,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
