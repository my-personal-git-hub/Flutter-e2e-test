import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';
import 'package:profile/runner.dart' as app;
import 'package:surf_logger/surf_logger.dart';
import 'step_definitions/about_me_definitions.dart';
import 'step_definitions/interest_list_definitions.dart';
import 'step_definitions/main_step_definitions.dart';
import 'step_definitions/next_step.dart';
import 'step_definitions/profile_step_definitions.dart';
import 'step_definitions/select_city_definitions.dart';

part 'gherkin_suite_test.g.dart';

///Удалил последние тестовые сценарии так как я прошел прямой путь, повторное пробегаться по экранам не успел реализовать
@GherkinTestSuite()
void main() {
  executeTestSuite(
    configuration: FlutterTestConfiguration(
      featureDefaultLanguage: 'ru',
      order: ExecutionOrder.alphabetical,
      defaultTimeout: const Duration(minutes: 5),
      reporters: [
        StdoutReporter(MessageLevel.error)
          ..setWriteLineFn(Logger.d)
          ..setWriteFn(Logger.d),
        ProgressReporter()
          ..setWriteLineFn(Logger.d)
          ..setWriteFn(Logger.d),
        TestRunSummaryReporter()
          ..setWriteLineFn(Logger.d)
          ..setWriteFn(Logger.d),
        JsonReporter(writeReport: (_, __) => Future<void>.value()),
      ],
      stepDefinitions: [
        ...MainStepDefinitions.steps,
        ...ProfileStepDefinitions.steps,
        ...NextStep.steps,
        ...SelectCityDefenitions.steps,
        ...NextStep.steps,
        ...InterestListDefinitions.steps,
        ...NextStep.steps,
        ...AboutMeDefinitions.steps,
      ],
    ),
    appMainFunction: (world) => app.run(),
  );
}
