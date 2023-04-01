import 'package:equatable/equatable.dart';

class ServingSizes extends Equatable {
  final String uri;
  final String label;
  final int quantity;

  const ServingSizes({
    required this.uri,
    required this.label,
    required this.quantity,
  });

  @override
  List<Object?> get props => [
        uri,
        label,
        quantity,
      ];
}
