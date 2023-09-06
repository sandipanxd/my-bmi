import 'dart:io';
import 'dart:async';
import 'package:bmi_calculator/src/settings/settings.service.dart';
import 'package:flutter/material.dart' show Locale;

/// A fake [SettingsService] implementation that used in testing.
class FakeSettingsService implements SettingsService {
  late Locale _locale;

  @override
  FutureOr<Locale> locale() async {
    final languageCode = Platform.localeName.split('_')[0];
    _locale = Locale(languageCode);

    return Future<Locale>.value(_locale);
  }

  @override
  FutureOr<void> updateLocale(Locale locale) async {
    _locale = locale;
  }
}