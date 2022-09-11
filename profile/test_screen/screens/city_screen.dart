
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/place_residence/widgets/field_with_suggestions_widget/field_with_suggestions_widget.dart';

///Поиск города в текстовом поле
abstract class CityScreen{
  static Finder textField() => find.byWidgetPredicate((widget) {
    return widget is FieldWithSuggestionsWidget;
  });
}