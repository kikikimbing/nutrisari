import 'package:equatable/equatable.dart';
import 'package:nutrisari/core/error/failures.dart';

enum ViewState { initial, loading, error, hasData, noData }

extension ViewStateExtension on ViewState {
  bool get isLoading => this == ViewState.loading;

  bool get isInitial => this == ViewState.initial;

  bool get isError => this == ViewState.error;

  bool get isHasData => this == ViewState.hasData;

  bool get isNoData => this == ViewState.noData;
}

class ViewDataState<T> extends Equatable {
  final ViewState status;
  final T? data;
  final String? message;
  final Failure? failure;

  const ViewDataState._({
    required this.status,
    this.data,
    this.message = "",
    this.failure,
  });

  factory ViewDataState.loaded({T? data}) {
    return ViewDataState._(status: ViewState.hasData, data: data);
  }

  factory ViewDataState.error({
    required String message,
    required Failure? failure,
  }) {
    return ViewDataState._(
      status: ViewState.error,
      message: message,
      failure: failure,
    );
  }

  factory ViewDataState.loading({String? message}) {
    return ViewDataState._(status: ViewState.loading, message: message ?? "");
  }

  factory ViewDataState.initial() {
    return const ViewDataState._(status: ViewState.initial);
  }

  factory ViewDataState.noData({required String message}) {
    return ViewDataState._(status: ViewState.noData, message: message);
  }

  @override
  List<Object?> get props => [
        status,
        data,
        message,
        failure,
      ];
}
