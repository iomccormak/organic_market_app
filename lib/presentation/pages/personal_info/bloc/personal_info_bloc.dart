import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/profile/profile.dart';

part 'personal_info_event.dart';
part 'personal_info_state.dart';

class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  PersonalInfoBloc() : super(PersonalInfoInitial()) {
    on<PersonalInfoInitialized>(_onInitialized);
    on<PersonalInfoSaved>(_onSaved);
  }

  Future<void> _onInitialized(
      PersonalInfoInitialized event, Emitter<PersonalInfoState> emit) async {
    emit(PersonalInfoInitial());
    try {
      emit(
        const PersonalInfoLoad(
          profile: Profile(
            name: '',
            surname: '',
            phone: '',
            dateOfBirth: '',
            email: '',
          ),
        ),
      );
    } catch (_) {
      emit(PersonalInfoError());
    }
  }

  Future<void> _onSaved(
      PersonalInfoSaved event, Emitter<PersonalInfoState> emit) async {
    emit(PersonalInfoInitial());
    try {
      emit(
        PersonalInfoLoad(
          profile: Profile(
            name: event.name,
            surname: event.surname,
            phone: event.phone,
            dateOfBirth: event.date,
            email: event.email,
          ),
        ),
      );
    } catch (_) {
      emit(PersonalInfoError());
    }
  }
}
