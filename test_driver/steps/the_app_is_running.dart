import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';


// Future<void> theAppIsRunning(WidgetTester tester) async {
//     app.main();
//     await tester.pumpAndSettle();
// }

// class theAppIsRunning extends GivenWithWorld<FlutterWorld>{
//   theAppIsRunning():super(StepDefinitionConfiguration()..timeout=Duration(seconds: 10));
//   @override
//   Future<void> executeStep() async{
//     HomePage homePage = HomePage(world.driver);
//     expect(await homePage.getCounterValue(), "0");
//   }
//   @override
//   RegExp get pattern => RegExp(r"the app is running");
// }

// StepDefinitionGeneric TheAppIsRunning() {
//   return given<FlutterWorld>(
//     'the app is running',
//     (context) async {
//       // implement your code
//       group('end-to-end test', () {
//         testWidgets('check if the app is running',
//         (tester) async {
//           //app.main();
//           await tester.pumpAndSettle();
//           expect(find.text('0'), findsOneWidget);
//         });
//      });
//     }
//   );
// }

  // return given2<FlutterWorld>(
  //   r"the app is running",
  //   (context) async {
  //     final locator = find.byValueKey(key);
  //     for (var i = 0; i < count; i += 1) {
  //       await FlutterDriverUtils.tap(context.world.driver, locator);
  //     }
  //   },
  // );


//   StepDefinitionGeneric<TWorld> given<TWorld extends World>(
//   Pattern pattern,
//   Future<void> Function(StepContext<TWorld> context) onInvoke, {
//   StepDefinitionConfiguration? configuration,
// }) =>
//     step<TWorld, dynamic, dynamic, dynamic, dynamic, dynamic>(
//       pattern,
//       0,
//       onInvoke,
//       configuration: configuration,
//     );
// }

class theAppIsRunning extends Given2WithWorld<String, String, FlutterWorld>{
  theAppIsRunning():super(StepDefinitionConfiguration()..timeout=Duration(seconds: 10));
  @override
  Future<void> executeStep(counterValKey, counter) async{
    final locator = find.byValueKey(counterValKey);
    expect(await FlutterDriverUtils.getText(world.driver!, locator), counter);
  }
  @override
  RegExp get pattern => RegExp(r"the {string} starts at {string}");
}
