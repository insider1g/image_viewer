import 'dart:ui';

import 'package:flutter/widgets.dart';

class PageableScrollController extends ScrollController {
  final double threshold;
  PageableScrollController({this.threshold = 400.0});
  VoidCallback onRefreshListener;

  @override
  void notifyListeners() {
    super.notifyListeners();
    if (position.hasPixels) _verifyScrollState();
  }

  void _verifyScrollState() {
    final maxScroll = position.maxScrollExtent;
    final currentScroll = position.pixels;
    final scrollLeft = maxScroll - currentScroll;
    if (scrollLeft <= threshold) onRefreshListener?.call();
  }

  void setOnRefreshListener(VoidCallback listener) {
    this.onRefreshListener = listener;
  }

  void dispose() {
    onRefreshListener = null;
    super.dispose();
  }
}
