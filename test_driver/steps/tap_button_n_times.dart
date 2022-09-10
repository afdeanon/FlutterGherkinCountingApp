import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:test/expect.dart';

// StepDefinitionGeneric TapButtonNTimesStep() {
//   return when2<String, int, FlutterWorld>(
//     'I tap the {string} button {int} times',
//     (key, count, context) async {
//       final locator = find.byValueKey(key);
//       for (var i = 0; i < count; i += 1) {
//         await FlutterDriverUtils.tap(context.world.driver, locator);
//       }
//     },
//   );
// }

// StepDefinitionGeneric CounterIsSet() {
//   return given1<String, FlutterWorld>(
//     'the counter is set to {0}',
//     (counter, context) async {
//        final locator = find.byValueKey("counter-val-key'");
//        expect(locator, counter);
//     },
//   );
// }

class TapButtonNTimes extends Given2WithWorld<String, int, FlutterWorld>{
  @override
  Future<void> executeStep(buttonKeyValue, counter) async{
    final locator = find.byTooltip(buttonKeyValue);
    for (var i = 0; i < counter; i += 1) {
        await FlutterDriverUtils.tap(world.driver, locator);
      }
  }
  @override
  RegExp get pattern => RegExp(r"I tap the {string} button {int} times");
}