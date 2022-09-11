
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/about_me_screen/about_me_screen.dart';

abstract class AboutMe{
  static Finder facts() => find.byWidgetPredicate((widget) {
    return widget is AboutMeScreen;
  });
}