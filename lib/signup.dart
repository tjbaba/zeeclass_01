import 'package:flutter/material.dart';
import 'package:zeeclass_01/instances.dart';
import 'package:zeeclass_01/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please enter an email address';
    }
    String pattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: email,
                decoration: const InputDecoration(hintText: "Email"),
                validator: _validateEmail,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: password,
                decoration: const InputDecoration(hintText: "Password"),
                validator: (String? val) {
                  if (val!.isEmpty) {
                    return "Enter Password";
                  } else if (val.length < 8) {
                    return "Password should be greater then 8 characters";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: confirmPassword,
                decoration: const InputDecoration(hintText: "Confirm Password"),
                validator: (String? val) {
                  if (val!.isEmpty) {
                    return "Enter Confirm Password";
                  } else if (val != password.text) {
                    return "Password doesn't match";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      signUp();
                    } else {
                      print("Failed");
                    }
                  },
                  child: const Text("Signup"))
            ],
          ),
        ),
      ),
    );
  }

  signUp() {
    auth
        .createUserWithEmailAndPassword(
            email: email.text, password: password.text)
        .then((value) {
      formKey.currentState!.reset();
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MyHomePage(title: "title")),
          (route) => false);
      print("Account Created Successfully");
    });
  }
}
