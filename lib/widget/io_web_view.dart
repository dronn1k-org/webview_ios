import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/wb_event.dart';

class IOSWebView extends StatefulWidget {
  final String urlAddress;
  final Size? size;
  final String? certBase64;

  final FutureOr<void> Function(WBError error)? onError;
  final FutureOr<void> Function(WBUrlError error)? onUrlError;
  final FutureOr<void> Function(WBUnhandled event)? onUnhandledEvent;
  final FutureOr<void> Function(WBNavigationAction navAction)? onNavigationAction;
  final FutureOr<void> Function(WBNavigationResponse navResponse)? onNavigationResponse;

  const IOSWebView({
    super.key,
    required this.urlAddress,
    this.size,
    this.certBase64,
    this.onError,
    this.onUrlError,
    this.onUnhandledEvent,
    this.onNavigationAction,
    this.onNavigationResponse,
  });

  @override
  State<IOSWebView> createState() => _IOSWebViewState();
}

class _IOSWebViewState extends State<IOSWebView> {
  final _uiKitKey = GlobalKey(debugLabel: 'ios_web_view_global_key');

  Size? _uiKitSize;

  final _eventChannel = const EventChannel('dronn1k.web-view/event-channel');

  late final _eventStream = _eventChannel.receiveBroadcastStream();

  StreamSubscription<dynamic>? _eventSub;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (mounted) {
        setState(() => _uiKitSize = _uiKitKey.currentContext?.size);
      }
    });
    _eventSub = _eventStream
        .where((event) => event is Map<Object?, Object?>)
        .map((event) => WBEvent.fromJson(event as Map<Object?, Object?>))
        .listen(
      (event) async {
        return switch (event) {
          WBError() => await widget.onError?.call(event),
          WBUrlError() => await widget.onUrlError?.call(event),
          WBUnhandledEvent() => await widget.onUnhandledEvent?.call(event),
          WBNavigationChange() => switch (event) {
              WBNavigationAction() => await widget.onNavigationAction?.call(event),
              WBNavigationResponse() => await widget.onNavigationResponse?.call(event),
              WBNavigationUnhandled() => widget.onUnhandledEvent?.call(event),
            }
        };
      },
    );
  }

  @override
  void dispose() {
    _eventSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: _uiKitKey,
      width: _uiKitSize?.width ?? widget.size?.width ?? double.maxFinite,
      height: _uiKitSize?.height ?? widget.size?.height ?? double.maxFinite,
      child: _uiKitSize != null
          ? UiKitView(
              viewType: 'dronn1k.web-view-id',
              layoutDirection: TextDirection.ltr,
              creationParams: {
                "size": {
                  "width": _uiKitSize?.width,
                  "height": _uiKitSize?.height,
                },
                "urlAddress": widget.urlAddress,
                "cert": widget.certBase64,
              },
              creationParamsCodec: const StandardMessageCodec(),
            )
          : null,
    );
  }
}
