import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/broken_trail_illustration.dart';

/// Full-screen "no internet" state. Shown by [ConnectivityGate] in place of
/// whatever screen was on top, whenever a connectivity check fails —
/// never as a banner or dialog, so the user can't tap into a quiz with
/// no connection underneath it.
class OfflineScreen extends StatefulWidget {
  final Future<void> Function() onRefresh;

  const OfflineScreen({super.key, required this.onRefresh});

  @override
  State<OfflineScreen> createState() => _OfflineScreenState();
}

class _OfflineScreenState extends State<OfflineScreen> {
  bool _refreshing = false;

  Future<void> _handleRefresh() async {
    setState(() => _refreshing = true);
    await widget.onRefresh();
    if (mounted) setState(() => _refreshing = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const BrokenTrailIllustration(size: 104),
                const SizedBox(height: 22),
                Text(
                  "You've lost the trail",
                  style: AppTextStyles.displaySerif.copyWith(
                    color: AppColors.ink,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'No internet connection right now. Check your network and give it another go.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.5,
                    height: 1.5,
                    color: AppColors.ink.withOpacity(0.6),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: _refreshing ? null : _handleRefresh,
                  icon: _refreshing
                      ? SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppColors.paper.withOpacity(0.8),
                          ),
                        )
                      : const Icon(Icons.refresh, size: 18),
                  label: Text(_refreshing ? 'Checking…' : 'Refresh'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
