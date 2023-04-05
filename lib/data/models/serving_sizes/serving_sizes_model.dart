import 'package:freezed_annotation/freezed_annotation.dart';

part 'serving_sizes_model.freezed.dart';
part 'serving_sizes_model.g.dart';

@freezed
class ServingSizesModel with _$ServingSizesModel {
  const factory ServingSizesModel({
    String? uri,
    String? label,
    double? quantity,
  }) = _ServingSizesModel;

  factory ServingSizesModel.fromJson(Map<String, dynamic> json) =>
      _$ServingSizesModelFromJson(json);
}
