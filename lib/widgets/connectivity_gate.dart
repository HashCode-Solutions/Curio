import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import '../screens/offline_screen.dart';

/// Wraps the whole app (see main.dart's MaterialApp.builder). Whenever
/// there's no real internet access, it swaps in [OfflineScreen] in place
/// of whatever was on screen, and restores it automatically once a
/// connection reappears (or the user taps Refresh).
///
/// Checks two things, not one: connectivity_plus only reports whether the
/// device is attached to a network interface (wifi/cellular) — a phone on
/// wifi with no actual internet still reports "connected". So on top of
/// that, an actual DNS lookup confirms internet is reachable, not just
/// that a network exists.
class ConnectivityGate extends StatefulWidget {
  final Widget child;

  const ConnectivityGate({super.key, required this.child});

  @override
  State<ConnectivityGate> createState() => _ConnectivityGateState();
}

class _ConnectivityGateState extends State<ConnectivityGate> {
  bool _hasConnection = true; // assume online until the first check completes
  bool _checking = false;
  StreamSubscription<List<ConnectivityResult>>? _subscription;

  @override
  void initState() {
    super.initState();
    _checkConnection();
    _subscription = Connectivity().onConnectivityChanged.listen(
      (_) => _checkConnection(),
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<void> _checkConnection() async {
    if (_checking) return;
    _checking = true;

    final results = await Connectivity().checkConnectivity();
    var online = !results.contains(ConnectivityResult.none);

    if (online) {
      online = await _hasRealInternet();
    }

    _checking = false;
    if (mounted) setState(() => _hasConnection = online);
  }

  Future<bool> _hasRealInternet() async {
    try {
      final result = await InternetAddress.lookup(
        'example.com',
      ).timeout(const Duration(seconds: 5));
      return result.isNotEmpty && result.first.rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_hasConnection) {
      return OfflineScreen(onRefresh: _checkConnection);
    }
    return widget.child;
  }
}
