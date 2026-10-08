import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

const siteUrl = 'https://gtu.qgis.ge/';
const _siteHost = 'gtu.qgis.ge';

/// Full-screen WebView around the GTU GIS site with progress bar,
/// back navigation and an offline/error screen.
class WebShell extends StatefulWidget {
  const WebShell({super.key});

  @override
  State<WebShell> createState() => _WebShellState();
}

class _WebShellState extends State<WebShell> {
  late final WebViewController _controller;
  int _progress = 0;
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: _onNavigationRequest,
          onPageStarted: (_) => setState(() => _failed = false),
          onProgress: (p) => setState(() => _progress = p),
          onWebResourceError: (error) {
            if (error.isForMainFrame ?? true) setState(() => _failed = true);
          },
        ),
      )
      ..loadRequest(Uri.parse(siteUrl));
  }

  /// Site pages stay in the app; external links open in the system browser.
  Future<NavigationDecision> _onNavigationRequest(
    NavigationRequest request,
  ) async {
    final uri = Uri.tryParse(request.url);
    if (uri == null) return NavigationDecision.prevent;
    final inApp = uri.scheme == 'about' ||
        uri.scheme == 'data' ||
        (uri.scheme == 'https' &&
            (uri.host == _siteHost || uri.host.endsWith('.$_siteHost')));
    if (inApp) return NavigationDecision.navigate;
    if (request.isMainFrame) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
      return NavigationDecision.prevent;
    }
    // Embedded content (YouTube, maps, ...) loads in place.
    return NavigationDecision.navigate;
  }

  Future<void> _onBack() async {
    if (await _controller.canGoBack()) {
      await _controller.goBack();
    } else {
      SystemNavigator.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _onBack();
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              if (_progress < 100 && !_failed)
                LinearProgressIndicator(value: _progress / 100, minHeight: 2),
              Expanded(
                child: _failed
                    ? _OfflineView(onRetry: _controller.reload)
                    : WebViewWidget(controller: _controller),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OfflineView extends StatelessWidget {
  const _OfflineView({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wifi_off, size: 56, color: theme.colorScheme.primary),
            const SizedBox(height: 16),
            Text(
              'ინტერნეტი ვერ მოიძებნა',
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'შეამოწმეთ კავშირი და სცადეთ თავიდან.',
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('თავიდან ცდა'),
            ),
          ],
        ),
      ),
    );
  }
}
