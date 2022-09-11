import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/interests_screen/interests_screen.dart';

abstract class InterestListScreen {
  /// кнопка выбора хобби
  static Finder  photo = find.ancestor(of: find.text('Photo'), matching: find.byType(Row));
  static Finder  design = find.widgetWithText(InterestsScreen, 'Design');
}

