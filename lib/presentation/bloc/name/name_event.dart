part of 'name_bloc.dart';

@freezed
class NameEvent with _$NameEvent {
  const factory NameEvent.getName() = GetName;
  const factory NameEvent.setName({
    required String name,
  }) = SetName;
}
