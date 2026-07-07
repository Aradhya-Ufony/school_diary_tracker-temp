# iOS flavor setup — manual step

Unlike Android's `build.gradle`, iOS flavor config lives partly in binary
Xcode project files (`.pbxproj`) that can't be safely hand-authored as text
— editing them outside Xcode risks corrupting the project. This is a
**manual, one-time setup you do in Xcode**, described below. I'm not
generating the `.xcodeproj` by hand.

## Steps (do this once, after `flutter create` has generated `ios/`)

1. Open `ios/Runner.xcworkspace` in Xcode.
2. Duplicate the existing `Runner` scheme/target configuration for each
   flavor's Debug/Release/Profile, or (simpler, recommended for 2 flavors)
   use **Xcode Configurations + xcconfig files** instead of duplicate
   targets:

   Create these two files (plain text, safe to author directly):

   `ios/Flutter/SchoolDiary.xcconfig`
   ```
   #include "Generated.xcconfig"
   FLUTTER_TARGET=lib/main_school_diary.dart
   PRODUCT_BUNDLE_IDENTIFIER=com.ufony.SDTracker
   PRODUCT_NAME=SD Tracker
   ```

   `ios/Flutter/Euro.xcconfig`
   ```
   #include "Generated.xcconfig"
   FLUTTER_TARGET=lib/main_euro.dart
   PRODUCT_BUNDLE_IDENTIFIER=com.ufony.schooldiarytracker
   PRODUCT_NAME=Euro Tracker
   ```

3. In Xcode, under **Runner project → Info → Configurations**, duplicate
   Debug/Release/Profile for each flavor (e.g. `Debug-schoolDiary`,
   `Release-schoolDiary`, `Debug-euro`, `Release-euro`) and assign the
   matching `.xcconfig` file to each.
4. Create matching **Schemes** (`schoolDiaryRouteTracker`, `euroWebGenieRouteTracker`)
   pointing at those configurations, via Product → Scheme → Manage Schemes.
5. Run with:
   ```
   flutter run --flavor schoolDiaryRouteTracker -t lib/main_school_diary.dart
   flutter run --flavor euroWebGenieRouteTracker -t lib/main_euro.dart
   ```

## App Transport Security (HTTPS-only — per your decision)

In `ios/Runner/Info.plist`, do **not** add an `NSAppTransportSecurity` /
`NSAllowsArbitraryLoads` key at all. iOS defaults to HTTPS-only (TLS 1.2+)
when that key is absent, which is exactly the "enforce HTTPS in both
builds" behavior you asked for — there's nothing to add, only something to
make sure nobody adds later. I'll double check this stays true when we
touch Info.plist again in later steps (push notifications, background
modes).

## Launcher icons / app names

Same caveat as Android: real per-flavor artwork wasn't part of the handed-
over source and needs to be supplied or exported, then run through the
`icons_launcher` package (already in `pubspec.yaml`) or set manually via
`ios/Runner/Assets.xcassets/AppIcon.appiconset`.
