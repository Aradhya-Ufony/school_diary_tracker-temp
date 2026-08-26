import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_constants.dart';
import '../providers/drill_providers.dart';
import '../../../../l10n/generated/app_localizations.dart';

class DrillRosterMarkingScreen extends ConsumerStatefulWidget {
  const DrillRosterMarkingScreen({super.key});

  @override
  ConsumerState<DrillRosterMarkingScreen> createState() => _DrillRosterMarkingScreenState();
}

class _DrillRosterMarkingScreenState extends ConsumerState<DrillRosterMarkingScreen> {
  final Set<int> _presentStudentIds = {};
  bool _isInitialized = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(drillChecklistProvider);
    final notifier = ref.read(drillChecklistProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    if (!_isInitialized && !state.isLoading) {
      _presentStudentIds.clear();
      _presentStudentIds.addAll(
        state.items.values
            .where((item) => item.wasOnBus)
            .map((item) => item.childId),
      );
      _isInitialized = true;
    }

    final sortedStudents = state.items.values.toList()
      ..sort((a, b) => a.childName.toLowerCase().compareTo(b.childName.toLowerCase()));

    final totalCount = sortedStudents.length;
    final presentCount = _presentStudentIds.length;
    final isAllSelected = totalCount > 0 && presentCount == totalCount;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.drillRosterMarkAttendance),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _isInitialized = false;
              });
              notifier.initRoster();
            },
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : state.error != null
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.error_outline, color: Colors.red, size: 48),
                        const SizedBox(height: 16),
                        Text(
                          state.error!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isInitialized = false;
                            });
                            notifier.initRoster();
                          },
                          child: Text(l10n.genericRetry),
                        ),
                      ],
                    ),
                  ),
                )
              : Column(
                  children: [
                    // Header Details
                    Container(
                      color: Colors.grey.shade100,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  l10n.drillRosterRoute(state.roster?.routeName ?? "Live Route"),
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black87),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  l10n.drillRosterBus(state.busNumber ?? state.roster?.busNumber ?? "N/A"),
                                  style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            l10n.drillRosterDrillType(state.drillType ?? ""),
                            style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.PRIMARY, fontSize: 14),
                          ),
                        ],
                      ),
                    ),

                    // Present Count & Select All Bar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            l10n.drillRosterPresentCount(presentCount, totalCount),
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.PRIMARY),
                          ),
                          if (totalCount > 0)
                            Row(
                              children: [
                                Text(
                                  l10n.drillRosterSelectAll,
                                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black87),
                                ),
                                const SizedBox(width: 8),
                                Checkbox(
                                  value: isAllSelected,
                                  activeColor: AppColors.PRIMARY,
                                  onChanged: (checked) {
                                    setState(() {
                                      if (checked == true) {
                                        _presentStudentIds.addAll(sortedStudents.map((s) => s.childId));
                                      } else {
                                        _presentStudentIds.clear();
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),

                    // Student List
                    Expanded(
                      child: totalCount == 0
                          ? Center(
                              child: Text(
                                l10n.drillRosterNoStudents,
                                style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
                              ),
                            )
                          : ListView.builder(
                              itemCount: sortedStudents.length,
                              itemBuilder: (context, index) {
                                final student = sortedStudents[index];
                                final isPresent = _presentStudentIds.contains(student.childId);

                                return Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: isPresent ? Colors.white : Colors.grey.shade50,
                                  ),
                                  child: CheckboxListTile(
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                                    activeColor: AppColors.PRIMARY,
                                    title: Text(
                                      student.childName,
                                      style: TextStyle(
                                        fontWeight: isPresent ? FontWeight.bold : FontWeight.normal,
                                        color: isPresent ? Colors.black : Colors.black54,
                                      ),
                                    ),
                                    subtitle: Text(
                                      l10n.drillRosterSeat(student.seatNumber ?? "N/A"),
                                      style: TextStyle(
                                        color: isPresent ? Colors.grey.shade700 : Colors.grey.shade500,
                                      ),
                                    ),
                                    value: isPresent,
                                    onChanged: (checked) {
                                      setState(() {
                                        if (checked == true) {
                                          _presentStudentIds.add(student.childId);
                                        } else {
                                          _presentStudentIds.remove(student.childId);
                                        }
                                      });
                                    },
                                  ),
                                );
                              },
                            ),
                    ),

                    // Next Screen Button
                    SafeArea(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.PRIMARY,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          onPressed: () {
                            notifier.updateRosterWasOnBus(_presentStudentIds.toList());
                            context.push(Constants.DRILL_CHECKLIST_ROUTE);
                          },
                          child: Text(
                            l10n.drillRosterProceed,
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
    );
  }
}
