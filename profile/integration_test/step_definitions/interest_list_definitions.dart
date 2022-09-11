
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../../test_screen/test_screen_library.dart';

///Выбор хобби
abstract class InterestListDefinitions
{static Iterable<StepDefinitionGeneric> get steps =>
    [
      when1<String, FlutterWidgetTesterWorld>(
        RegExp(r'Я выбираю из интересов {string}$'),
            (hobby, context) async {
          final tester = context.world.rawAppDriver;
          await tester.tap(InterestListScreen.photo);
          await tester.pump();
          await tester.tap(InterestListScreen.design);
          await tester.pump();
          
        },
      ),
    ];
}