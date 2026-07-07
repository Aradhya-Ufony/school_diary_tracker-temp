# Android network security — HTTPS-only (per your decision)

The original app had `android:usesCleartextTraffic="true"` in the manifest
plus a `network_security_config.xml` with `cleartextTrafficPermitted="true"`
applied to **both** debug and release. You've asked to drop cleartext
entirely and enforce HTTPS in both builds.

In the generated `android/app/src/main/AndroidManifest.xml`:
- Do **not** add `android:usesCleartextTraffic="true"`.
- Do **not** add a custom `network_security_config.xml` at all.

Flutter/Android's default behavior with neither of those present is
already HTTPS-only (cleartext blocked) for both debug and release — so, as
with iOS, this is "nothing to add, only something to make sure nobody
re-adds later." I'll call this out again if any later step (e.g. a
webview, if ever needed) seems to require it, rather than silently
reintroducing it.
