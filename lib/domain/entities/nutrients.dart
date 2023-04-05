import 'package:equatable/equatable.dart';

class Nutrients extends Equatable {
  final double enercKcal;
  final double procnt;
  final double fat;
  final double chocdf;
  final double fitbtg;

  const Nutrients({
    required this.enercKcal,
    required this.procnt,
    required this.fat,
    required this.chocdf,
    required this.fitbtg,
  });

  @override
  List<Object?> get props => [
        enercKcal,
        procnt,
        fat,
        chocdf,
        fitbtg,
      ];
}
