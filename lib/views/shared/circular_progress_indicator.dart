import 'package:flutter/material.dart';

class EvProgressIndicator {
  static OverlayEntry _overlayEntry;
  static bool _isDisplayed = false;

  static void show({@required BuildContext context}) {
    if (!_isDisplayed) {
      _overlayEntry = _createOverlayEntry(context);
      Overlay.of(context).insert(_overlayEntry);
      _isDisplayed = true;
    }
  }

  static void suppress() {
    if (_isDisplayed) {
      if (_overlayEntry != null) {
        _overlayEntry.remove();
      }
      _isDisplayed = false;
    }
  }

  static OverlayEntry _createOverlayEntry(BuildContext context) {
    return OverlayEntry(
      builder: (context) => Container(
        color: Colors.black.withOpacity(0.5),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
