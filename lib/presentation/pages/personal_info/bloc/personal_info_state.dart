part of 'personal_info_bloc.dart';

abstract class PersonalInfoState extends Equatable {
  const PersonalInfoState();

  @override
  List<Object> get props => [];
}

class PersonalInfoInitial extends PersonalInfoState {
  @override
  List<Object> get props => [];
}

class PersonalInfoLoad extends PersonalInfoState {
  const PersonalInfoLoad({
    required this.profile,
  });

  final Profile profile;

  @override
  List<Object> get props => [profile];
}

class PersonalInfoError extends PersonalInfoState {
  @override
  List<Object> get props => [];
}
