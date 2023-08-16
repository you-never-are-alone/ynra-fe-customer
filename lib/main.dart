import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';
import 'package:flutter/material.dart';
import 'routes/controller.dart';

void main() {
  runApp(const MyApp());
}

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
      initialRoute: register,
    );
  }
}

@Openapi(
    additionalProperties:
    AdditionalProperties(pubName: 'ynba_api_user', pubAuthor: 'Eric Härtel'),
    inputSpecFile: 'api/ynba-user.yml',
    generatorName: Generator.dart,
    outputDirectory: 'api/user',
    alwaysRun: true)
class UserApi {}

@Openapi(
    additionalProperties:
    AdditionalProperties(pubName: 'ynba_api_ride', pubAuthor: 'Eric Härtel'),
    inputSpecFile: 'api/ynba-ride.yml',
    generatorName: Generator.dart,
    outputDirectory: 'api/ride',
    alwaysRun: true, overwriteExistingFiles: true, runSourceGenOnOutput: true)
class RideApi {}
