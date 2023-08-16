import 'package:amazon_cognito_identity_dart_2/cognito.dart';


class YnraState {
  // static final YnraState _instance = YnraState._internal();

  // factory YnraState() => _instance;

  final userPool = CognitoUserPool(
    'eu-central-1_Y9BFjLyda',
    '5v381joalvjm2nq04n65pifs1v',
  );

  bool _loggedIn = false;
  late String _userName;

  bool get loggedIn => _loggedIn;

  String get userName => _userName;

  register(final String password, final String email, final String? phoneNumber) async {
    final userAttributes = [
      AttributeArg(name: 'email', value: email),
    ];

    var data;
    try {
      data = await userPool.signUp(
        email,
        password,
        userAttributes: userAttributes,
      );
    } catch (e) {
      print(e);
    }

  }
}