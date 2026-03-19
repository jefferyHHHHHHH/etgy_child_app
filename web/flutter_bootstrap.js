// Custom Flutter web bootstrap (Flutter 3.41+ template).
// - Prevents legacy `window.flutterConfiguration` from breaking startup.
// - Forces CanvasKit to load from the local `canvaskit/` directory (no gstatic).

// Some environments or cached pages may still define window.flutterConfiguration.
// Flutter 3.41+ forbids mixing that legacy config with initializeEngine(config).
try {
  delete window.flutterConfiguration;
} catch (e) {
  window.flutterConfiguration = undefined;
}

{{flutter_js}}
{{flutter_build_config}}

_flutter.loader.load({
  config: {
    canvasKitBaseUrl: 'canvaskit/',
  },
});
