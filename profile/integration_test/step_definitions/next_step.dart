import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../../test_screen/screens/next_step_click.dart';
import '../../test_screen/test_screen_library.dart';

abstract class NextStep {
  static Iterable<StepDefinitionGeneric> get steps => [
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я перехожу далее$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        await tester.tap(NextStepClick.nextStepBtn);
        await tester.pumpAndSettle();

      },
    ),
  ];
}
