part of 'name_bloc.dart';

@freezed
class NameState with _$NameState {
  const factory NameState({
    required ViewDataState<String> nameState,
    required ViewDataState<bool> setNameState,
  }) = _NameState;
}
