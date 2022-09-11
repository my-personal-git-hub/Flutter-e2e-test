
import 'package:flutter/cupertino.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../../test_screen/screens/about_me_screen.dart';
import '../../test_screen/screens/save_button.dart';

abstract class AboutMeDefinitions {
  static Iterable<StepDefinitionGeneric> get steps =>
      [
        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я заполняю заметку о себе {string}$'),
              (facts, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(AboutMe.facts(), facts);
            await tester.pump();
            await tester.testTextInput.receiveAction(TextInputAction.done);
            await tester.pumpAndSettle();
            await tester.tap(NextStepClick.saveBtn);
          },
        ),
      ];
}