part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class DoLoginEvent extends LoginEvent {
  final LoginModel loginModel;
  DoLoginEvent({
    required this.loginModel,
  });
}
