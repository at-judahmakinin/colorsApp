abstract class LoginEvent {}

class LoginEmailChanged extends LoginEvent {
  final String email;

  LoginEmailChanged({required this.email});
}

class LoginPINChanged extends LoginEvent {
  final String pin;

  LoginPINChanged({required this.pin});
}

class LoginSubmitted extends LoginEvent {}
