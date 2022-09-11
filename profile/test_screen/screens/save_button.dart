import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class NextStepClick {
  /// кнопка перехода сохранения
  static Finder saveBtn = find.widgetWithText(ElevatedButton, 'Save');
}