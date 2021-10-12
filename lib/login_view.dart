import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loginForm(),
    );
  }

  Widget _loginForm() {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _usernameField(),
              _passwordField(),
              _loginButton(),
            ],
          ),
        ));
  }

  Widget _usernameField() {
    return TextFormField(
      obscureText: false,
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        hintText: 'Email',
      ),
      validator: (value) => null,
    );
  }

  Widget _passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.security),
        hintText: 'PIN',
      ),
      validator: (value) => null,
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Login'),
    );
  }
}
