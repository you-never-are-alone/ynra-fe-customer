import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';
import 'package:flutter/material.dart';
import 'routes/controller.dart';

void main() {
  runApp(const MyApp());
}

@Openapi(
    additionalProperties:
        AdditionalProperties(pubName: 'ynba_api', pubAuthor: 'Eric'),
    inputSpecFile: 'openapi/ynba.yml',
    generatorName: Generator.dio,
    outputDirectory: 'api',
    alwaysRun: true)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YNBA',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      onGenerateRoute: controller,
      initialRoute: rides,
    );
  }
}
