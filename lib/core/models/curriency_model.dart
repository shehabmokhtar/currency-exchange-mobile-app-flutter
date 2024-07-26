import 'package:equatable/equatable.dart';

class CurriencyModel extends Equatable {
  final int id;
  final String imagePath;
  final String country;
  final String currency;
  final String currencyCode;

  const CurriencyModel(
      this.id, this.imagePath, this.country, this.currency, this.currencyCode);

  @override
  List<Object?> get props => [id, imagePath, country, currency, currencyCode];
}
