import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class NextStepClick {
  /// кнопка перехода на следующий шаг
  static Finder nextStepBtn =
  find.byIcon(Icons.navigate_next);
}