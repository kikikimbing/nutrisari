import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/core/usecase/usecase.dart';
import 'package:nutrisari/domain/usecases/get_name_usecase.dart';
import 'package:nutrisari/domain/usecases/set_name_usecase.dart';

part 'name_event.dart';
part 'name_state.dart';
part 'name_bloc.freezed.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  final GetNameUseCase getNameUseCase;
  final SetNameUseCase setNameUseCase;

  NameBloc({
    required this.getNameUseCase,
    required this.setNameUseCase,
  }) : super(NameState(
          nameState: ViewDataState.initial(),
          setNameState: ViewDataState.initial(),
        )) {
    on<GetName>(_getname);
    on<SetName>(_setname);
  }

  Future<void> _getname(
    GetName event,
    Emitter<NameState> emit,
  ) async {
    emit(
      state.copyWith(
        nameState: ViewDataState.loading(),
      ),
    );
    final result = await getNameUseCase.call(const NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(
          nameState: ViewDataState.error(
            message: failure.toString(),
            failure: failure,
          ),
        ),
      ),
      (success) => emit(
        state.copyWith(
          nameState: ViewDataState.loaded(
            data: success,
          ),
        ),
      ),
    );
  }

  Future<void> _setname(
    SetName event,
    Emitter<NameState> emit,
  ) async {
    emit(
      state.copyWith(
        nameState: ViewDataState.loading(),
      ),
    );
    final result = await setNameUseCase.call(event.name);
    result.fold(
      (failure) => emit(
        state.copyWith(
          setNameState: ViewDataState.error(
            message: failure.toString(),
            failure: failure,
          ),
        ),
      ),
      (success) => emit(
        state.copyWith(
          setNameState: ViewDataState.loaded(
            data: success,
          ),
        ),
      ),
    );
  }
}
