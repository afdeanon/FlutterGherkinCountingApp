import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:gherkin/gherkin.dart';

class TheCounterIs extends Then2WithWorld<String, String, FlutterWorld>{
  @override
  Future<void> executeStep(counterKeyValue, counter) async{
    final locator = find.byValueKey(counterKeyValue);
    expect(await FlutterDriverUtils.getText(world.driver!, locator), counter);
  }
  @override
  RegExp get pattern => RegExp(r"Then I expect the {counter} to be {10}");
}



