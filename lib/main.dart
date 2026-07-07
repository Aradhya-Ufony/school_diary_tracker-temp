/// This app has no flavor-neutral entry point by design — every build must
/// pick one of the two real products. Some IDEs (and `flutter run` with no
/// -t flag) default to lib/main.dart, so this file exists purely to fail
/// loudly with a helpful message instead of silently running the wrong
/// (or an undefined) flavor.
void main() {
  throw UnsupportedError(
    'Run a specific flavor instead of lib/main.dart:\n'
    '  flutter run --flavor schoolDiaryRouteTracker -t lib/main_school_diary.dart\n'
    '  flutter run --flavor euroWebGenieRouteTracker -t lib/main_euro.dart',
  );
}
