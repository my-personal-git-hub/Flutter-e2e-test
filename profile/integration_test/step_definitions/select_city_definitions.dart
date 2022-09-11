
import 'package:flutter/cupertino.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../../test_screen/test_screen_library.dart';

///Поиск города
abstract class SelectCityDefenitions {
  static Iterable<StepDefinitionGeneric> get steps =>
      [
        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я выбираю город {string}$'),
              (placeResidenceTitle, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(CityScreen.textField(),placeResidenceTitle);
            await tester.pump();
            await tester.testTextInput.receiveAction(TextInputAction.done);
            await tester.pumpAndSettle();
          },
        ),
      ];
}