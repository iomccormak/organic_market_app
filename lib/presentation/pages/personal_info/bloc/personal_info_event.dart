part of 'personal_info_bloc.dart';

abstract class PersonalInfoEvent extends Equatable {
  const PersonalInfoEvent();

  @override
  List<Object> get props => [];
}

class PersonalInfoInitialized extends PersonalInfoEvent {
  @override
  List<Object> get props => [];
}

class PersonalInfoSaved extends PersonalInfoEvent {
  const PersonalInfoSaved(
    this.name,
    this.surname,
    this.phone,
    this.date,
    this.email,
  );

  final String name;
  final String surname;
  final String phone;
  final String date;
  final String email;

  @override
  List<Object> get props => [name, surname, phone, date, email];
}
