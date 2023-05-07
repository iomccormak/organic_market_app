import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  const Profile({
    required this.name,
    required this.surname,
    required this.phone,
    required this.dateOfBirth,
    required this.email,
  });

  final String name;
  final String surname;
  final String phone;
  final String dateOfBirth;
  final String email;

  @override
  List<Object> get props => [name, surname, phone, dateOfBirth, email];
}
