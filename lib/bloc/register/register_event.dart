part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class SaveRegisterEvent extends RegisterEvent {
  final RegisterModel request;
  SaveRegisterEvent({
    required this.request,
  });
}
