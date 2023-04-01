import 'package:equatable/equatable.dart';
import 'package:nutrisari/domain/entities/nutrients.dart';
import 'package:nutrisari/domain/entities/serving_sizes.dart';

class Food extends Equatable {
  final String foodId;
  final String label;
  final String knownAs;
  final Nutrients? nutrients;
  final String brand;
  final String category;
  final String categoryLabel;
  final String foodContentsLabel;
  final String image;
  final List<ServingSizes> servingSizes;
  final int servingsPerContainer;

  const Food({
    required this.foodId,
    required this.label,
    required this.knownAs,
    this.nutrients,
    required this.brand,
    required this.category,
    required this.categoryLabel,
    required this.foodContentsLabel,
    required this.image,
    required this.servingSizes,
    required this.servingsPerContainer,
  });

  @override
  List<Object?> get props => [
        foodId,
        label,
        knownAs,
        nutrients,
        brand,
        category,
        categoryLabel,
        foodContentsLabel,
        image,
        servingSizes,
        servingsPerContainer,
      ];
}
