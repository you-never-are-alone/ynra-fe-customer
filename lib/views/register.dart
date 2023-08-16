import 'package:flutter/material.dart';
import 'package:ynba_fe_customer/state/ynra_state.dart';

class RegisterPage extends StatelessWidget {
  final YnraState state = YnraState();
  final String title;

  RegisterPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [const Icon(Icons.supervised_user_circle_outlined), Text(title)],
          ),
        ),
        body: RegisterForm(
          state: state,
        ));
  }
}

class RegisterForm extends StatelessWidget {
  static const double padding = 5.0;
  static GlobalKey globalKey = GlobalKey<FormState>();
  final YnraState state;
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordRepeatController = TextEditingController();

  RegisterForm({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: padding,
          bottom: padding,
          left: padding / 2,
          right: padding / 2,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Form(
              key: globalKey,
              child: Column(
                children: <Widget>[
                  const Text("email"),
                  TextFormField(
                    controller: emailController,
                    validator: (val) {
                      final nameRegExp = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
                      if (!nameRegExp.hasMatch(val ?? "")) {
                        return "not a valid name";
                      }
                    },
                  ),
                  const Text("phone number"),
                  TextFormField(
                    controller: phoneNumberController,
                    validator: (val) {
                      final nameRegExp = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
                      if (!nameRegExp.hasMatch(val ?? "")) {
                        return "not a valid name";
                      }
                    },
                  ),
                  const Text("password"),
                  TextFormField(controller: passwordController),
                  const Text("password repeat"),
                  TextFormField(
                    controller: passwordRepeatController,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        state.register(passwordController.value.text, emailController.value.text,
                            phoneNumberController.value.text);
                      },
                      child: const Text("Submit"))
                ],
              )),
        ]));
  }
}
